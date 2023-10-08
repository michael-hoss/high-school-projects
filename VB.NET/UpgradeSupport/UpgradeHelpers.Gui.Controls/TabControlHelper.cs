using System;
using System.Drawing;
using System.Reflection;
using System.Text;
using System.Text.RegularExpressions;
using System.Windows.Forms;

namespace UpgradeHelpers.Gui.Controls
{
	public static partial class TabControlHelper
	{
		public static int GetOldTab(this TabControl tabControl)
		{
			FieldInfo field = tabControl.GetType().GetField("lastSelection", BindingFlags.NonPublic | BindingFlags.Instance);
			return (int)field.GetValue(tabControl);
		}
		/// <summary>
		/// Method that simulates the indexer of the TabControl
		/// </summary>
		/// <param name="tabControl"></param>
		/// <param name="key"></param>
		/// <returns></returns>
		public static TabPage TabPages(this TabControl tabControl, object key)
		{
			if (key != null && key is string)
			{
				string keyLocal = System.Convert.ToString(key);
				return tabControl.TabPages[tabControl.TabPages.ContainsKey(keyLocal) ? keyLocal : "tab" + keyLocal];
			}
			else
				return tabControl.TabPages[System.Convert.ToInt32(key)];
		}

		public static void SelectTab(this TabPage tab)
		{
			(tab.Parent as TabControl).SelectedTab = tab;
		}

		#region Enums TabControl
		/// <summary>
		///     Use bottom left corner pixel of image
		/// </summary>
		public enum Constants_MaskColorSource
		{
			//
			// Summary:
			//     No mask color (non-transparent)
			ssMaskColorNone = 0,
			//
			// Summary:
			//      Use bottom left corner pixel of image
			ssMaskColorUseImage = 1
		}

		/// <summary>
		///    Constants that specify the style of the Tab control
		/// </summary>
		public enum Constants_TabStyle
		{
			//
			// Summary:
			//      Note Page
			ssStyleNotePage = 1,
			//
			// Summary:
			//      Note Page Flat(no borders)
			ssStyleNotePageFlat = 2,

			//
			// Summary:
			//       Property Page
			ssStylePropertyPage = 0,


			//
			// Summary:
			//      Wizard (no runtime UI)
			ssStyleWizard = 3

		}

		/// <summary>
		///    Constants that specify which tab to select
		/// </summary>
		public enum Constants_SelectedTab
		{
			//
			// Summary:
			//     Select first visible(and enabled) tab
			ssSelectFirstTab = -3,
			//
			// Summary:
			//      Select last visible(and enabled) tab
			ssSelectLastTab = -4,

			//
			// Summary:
			//       Select next visible(and enabled) tab
			ssSelectNextTab = -1,

			//
			// Summary:
			//      Select previous visible(and enabled) tab
			ssSelectPreviousTab = -2
		}
		#endregion
	}
	public class TabControlExtension : TabControl
	{
		#region Windows Form Designer generated code

		public TabControlExtension()
			: base()
		{


			// This call is required by the Windows Form Designer.
			InitializeComponent();


			this.DrawMode = TabDrawMode.OwnerDrawFixed;//So that mnemonics are shown properly in tab pages
		}

		protected override void Dispose(bool disposing)
		{
			if (disposing)
			{
				if (!((components == null)))
				{
					components.Dispose();
				}
			}
			base.Dispose(disposing);
		}


		// Required by the Windows Form Designer
		private System.ComponentModel.IContainer components;

		// NOTE: The following procedure is required by the Windows Form Designer
		// It can be modified using the Windows Form Designer.
		// Do not modify it using the code editor.
		[System.Diagnostics.DebuggerStepThrough()]
		private void InitializeComponent()
		{
			components = new System.ComponentModel.Container();
		}


		#endregion
		public string Caption
		{
			get
			{
				StringBuilder toReturn = new StringBuilder("");
				foreach (TabPage TabPage in this.TabPages)
				{
					toReturn.AppendFormat(@"&{0}|", TabPage.Text);
				}
				return toReturn.ToString();
			}
			set
			{
				Regex rx = new Regex(@"&([\w ]+)\|");
				MatchCollection matches = rx.Matches(value);

				for (int i = 0; i < matches.Count; i++)
				{
					if (i < this.TabPages.Count)
					{
						this.TabPages[i].Text = matches[i].Groups[1].Value;
					}
				}
			}
		}

		public override string Text
		{
			get
			{
				return this.Caption;
			}
			set
			{
				this.Caption = value;
			}
		}

		#region tab page enable disable implementaion
		System.Collections.Generic.Dictionary<string, bool> _enableTabPageStatus = new System.Collections.Generic.Dictionary<string, bool>();
		public void SetTabPageEnabled(int tabPageIndex, bool enabled)
		{
			string tapPageName = this.TabPages[tabPageIndex].Name;
			SetTabPageEnabled(tapPageName, enabled);
		}

		public void SetTabPageEnabled(string tabPageName, bool enabled)
		{
			if (_enableTabPageStatus.ContainsKey(tabPageName))
			{
				_enableTabPageStatus[tabPageName] = enabled;
			}
			else
			{
				_enableTabPageStatus.Add(tabPageName, enabled);
			}
		}

		public bool IsTabPageEnabled(int tabPageIndex)
		{
			string tapPageName = this.TabPages[tabPageIndex].Name;
			return IsTabPageEnabled(tapPageName);

		}
		public bool IsTabPageEnabled(string tabPageName)
		{
			if (_enableTabPageStatus.ContainsKey(tabPageName))
			{
				return _enableTabPageStatus[tabPageName];
			}
			else
			{//Assume by default enabled
				return true;
			}
		}

		protected override void OnSelecting(TabControlCancelEventArgs e)
		{
			try
			{
				base.OnSelecting(e);
				if (e.Cancel != true)
				{
					e.Cancel = !this.IsTabPageEnabled(e.TabPage.Name);
				}
			}
			catch (Exception exception)
			{

			}
		}

		#endregion


		#region Overriden

		protected override bool ProcessMnemonic(char charCode)
		{
			foreach (TabPage page in this.TabPages)
			{
				if (Control.IsMnemonic(charCode, page.Text))
				{
					this.SelectedTab = page;
					this.Focus();
					return true;
				}
			}
			return false;
		}

		/// <summary>

		protected override void OnDrawItem(DrawItemEventArgs e)
		{

			base.OnDrawItem(e);
			Graphics g = null;
			try
			{
				DrawItemImplementation(e, g);

			}
			catch (Exception ex)
			{
				//eat the exception.  You dont want drawing exception to bubble up.
			}
			finally
			{
				if (g != null)
				{
					g.Dispose();
				}
			}
		}

		/// <summary>

		/// </summary>
		/// <param name="e"></param>
		/// <param name="g"></param>
		/// <returns></returns>
		protected virtual void DrawItemImplementation(DrawItemEventArgs e, Graphics g)
		{
			g = e.Graphics;
			StringFormat sf = new StringFormat();
			TabPage tp = this.TabPages[e.Index];
			Rectangle rt = this.GetTabRect(e.Index);

			if (e.Index == this.SelectedIndex)
			{
				//For the current Tab draw little below so that the while line
				//will disappear making the current tab stand out. Otherwise it is hard to tell which is
				// the current tab.
				Rectangle rt2 = rt;
				rt2.Inflate(0, 1);
				g.FillRectangle(System.Drawing.SystemBrushes.Control, rt2);
			}

			rt.Offset(tp.Margin.Left, tp.Margin.Top);
			if (tp.ImageIndex > -1)
			{
				Image im = this.ImageList.Images[tp.ImageIndex];
				g.DrawImage(im, rt.Left, rt.Top);
				//Ofsset the start so that the text placed properly
				rt.Offset(im.Size.Width + tp.Margin.Left, 0);
			}

			Brush drawingBrush = GetBrush(tp);

			sf.HotkeyPrefix = System.Drawing.Text.HotkeyPrefix.Show;
			g.DrawString(tp.Text,
						 this.Font,
						 drawingBrush,
						 rt,
						 sf);
		}
		protected virtual Brush GetBrush(TabPage tp)
		{
			Brush drawingBrush = (this.IsTabPageEnabled(tp.Name)) ? SystemBrushes.WindowText : SystemBrushes.InactiveCaption;
			return drawingBrush;
		}

		#endregion
	}
}
