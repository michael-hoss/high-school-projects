using System;
#if !NET_STANDARD_APP
using Microsoft.VisualBasic;
#endif

namespace UpgradeHelpers.Helpers
{
    /// <summary>
    /// The DateTimeHelper provides util functionality for Date and Time operations.
    /// </summary>
    public class DateTimeHelper
    {

        /// <summary>
        /// The minimal value for a Visual Basic 6 Date, which is 1899/12/30.
        /// </summary>
        private static readonly DateTime Vb6MinValue = new DateTime(1899, 12, 30);

		/// <summary>
		/// Implementation of DatePart where DateValue is an object, in some cases this function is
		/// expected to return null which is not done by Microsoft.VisualBasic.DateAndTime.DatePart.
		/// </summary>
		/// <param name="interval">DateInterval String expression representing
		/// the part of the date/time value you want to return.
		/// </param>
		/// <param name="dateValue">Date value that you want to evaluate.</param>
		/// <param name="dayOfWeek">A value chosen from the FirstDayOfWeek enumeration that specifies
		/// the first day of the week. If not specified, FirstDayOfWeek.Sunday is used.</param>
		/// <param name="weekOfYear">A value chosen from the FirstWeekOfYear enumeration that specifies
		/// the first week of the year. If not specified, FirstWeekOfYear.Jan1 is used.</param>
		/// <returns>Returns an Integer value containing the specified component of a given Date value
		/// or null if DateValue is null.</returns>
#if NET_STANDARD_APP
		public static object DatePart(string interval, object dateValue, object dayOfWeek, object weekOfYear)
        {
            if (dateValue == null)
                return null;

            if (Convert.IsDBNull(dateValue))
                return null;


            if ((dateValue is string) && (string.IsNullOrEmpty((string)dateValue)))
                return null;


            throw new NotSupportedException("Microsoft.VisualBasic.DateAndTime.DatePart is not supported on .NET Standard");
        }
#else
        public static object DatePart(string interval, object dateValue, FirstDayOfWeek dayOfWeek = FirstDayOfWeek.Sunday, FirstWeekOfYear weekOfYear = FirstWeekOfYear.Jan1)
        {
            if (dateValue == null)
                return null;

            if (Convert.IsDBNull(dateValue))
                return null;


            if ((dateValue is string) && (string.IsNullOrEmpty((string)dateValue)))
                return null;


            return DateAndTime.DatePart(interval, Convert.ToDateTime(dateValue), dayOfWeek, weekOfYear);
        }
#endif

        /// <summary>
        /// Implementation of function Time from Visual Basic 6. This function returns only the Time part
        /// of a System.DateTime.
        /// </summary>
        public static DateTime Time
        {
            get
            {
                return DateTime.Now.AddDays(-DateTime.Now.Date.ToOADate());
            }
        }

        /// <summary>
        /// Converts a DateTime to a String according to the format in Visual Basic 6.
        /// </summary>
        /// <param name="dateTime">The DateTime value to be converted to string.</param>
        /// <returns>The DateTime value converted to string.</returns>
        public static string ToString(DateTime dateTime)
        {
            string format = "G";
            if (dateTime.Date == Vb6MinValue)
                format = "T";
            else if (dateTime.TimeOfDay.Ticks == 0)
                format = "d";
            return dateTime.ToString(format);
        }
    }
}
