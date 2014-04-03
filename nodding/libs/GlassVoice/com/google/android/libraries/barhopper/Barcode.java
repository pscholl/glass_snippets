package com.google.android.libraries.barhopper;

import android.graphics.Point;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class Barcode
  implements Parcelable
{
  public static final int CALENDAR_EVENT = 11;
  public static final int CODABAR = 4;
  public static final int CODE_128 = 1;
  public static final int CODE_39 = 2;
  public static final int CODE_93 = 3;
  public static final int CONTACT_INFO = 1;
  public static final Parcelable.Creator<Barcode> CREATOR = new Parcelable.Creator()
  {
    public Barcode createFromParcel(Parcel paramAnonymousParcel)
    {
      return new Barcode(paramAnonymousParcel, null);
    }

    public Barcode[] newArray(int paramAnonymousInt)
    {
      return new Barcode[paramAnonymousInt];
    }
  };
  public static final int DATA_MATRIX = 5;
  public static final int EAN_13 = 6;
  public static final int EAN_8 = 7;
  public static final int EMAIL = 2;
  public static final int GEO = 10;
  public static final int ISBN = 3;
  public static final int ITF = 8;
  public static final int PHONE = 4;
  public static final int PRODUCT = 5;
  public static final int QR_CODE = 9;
  public static final int SMS = 6;
  public static final int TEXT = 7;
  public static final int UPC_A = 10;
  public static final int UPC_E = 11;
  public static final int URL = 8;
  public static final int WIFI = 9;
  public CalendarEvent calendarEvent;
  public ContactInfo contactInfo;
  public Point[] cornerPoints;
  public String displayValue;
  public Email email;
  public int format;
  public GeoPoint geoPoint;
  public Phone phone;
  public String rawValue;
  public Sms sms;
  public UrlBookmark url;
  public int valueFormat;
  public WiFi wifi;

  public Barcode()
  {
  }

  private Barcode(Parcel paramParcel)
  {
    this.format = paramParcel.readInt();
    this.rawValue = paramParcel.readString();
    this.displayValue = paramParcel.readString();
    this.valueFormat = paramParcel.readInt();
    this.cornerPoints = ((Point[])paramParcel.createTypedArray(Point.CREATOR));
    this.email = ((Email)paramParcel.readParcelable(Email.class.getClassLoader()));
    this.phone = ((Phone)paramParcel.readParcelable(Phone.class.getClassLoader()));
    this.sms = ((Sms)paramParcel.readParcelable(Sms.class.getClassLoader()));
    this.wifi = ((WiFi)paramParcel.readParcelable(WiFi.class.getClassLoader()));
    this.url = ((UrlBookmark)paramParcel.readParcelable(UrlBookmark.class.getClassLoader()));
    this.geoPoint = ((GeoPoint)paramParcel.readParcelable(GeoPoint.class.getClassLoader()));
    this.calendarEvent = ((CalendarEvent)paramParcel.readParcelable(CalendarEvent.class.getClassLoader()));
    this.contactInfo = ((ContactInfo)paramParcel.readParcelable(ContactInfo.class.getClassLoader()));
  }

  public int describeContents()
  {
    return 0;
  }

  public Rect getBoundingBox()
  {
    int i = 2147483647;
    int j = -2147483648;
    int k = 2147483647;
    int m = -2147483648;
    for (int n = 0; n < this.cornerPoints.length; n++)
    {
      Point localPoint = this.cornerPoints[n];
      i = Math.min(i, localPoint.x);
      j = Math.max(j, localPoint.x);
      k = Math.min(k, localPoint.y);
      m = Math.max(m, localPoint.y);
    }
    return new Rect(i, k, j, m);
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(this.format);
    paramParcel.writeString(this.rawValue);
    paramParcel.writeString(this.displayValue);
    paramParcel.writeInt(this.valueFormat);
    paramParcel.writeTypedArray(this.cornerPoints, 0);
    paramParcel.writeParcelable(this.email, 0);
    paramParcel.writeParcelable(this.phone, 0);
    paramParcel.writeParcelable(this.sms, 0);
    paramParcel.writeParcelable(this.wifi, 0);
    paramParcel.writeParcelable(this.url, 0);
    paramParcel.writeParcelable(this.geoPoint, 0);
    paramParcel.writeParcelable(this.calendarEvent, 0);
    paramParcel.writeParcelable(this.contactInfo, 0);
  }

  public static class Address
    implements Parcelable
  {
    public static final Parcelable.Creator<Address> CREATOR = new Parcelable.Creator()
    {
      public Barcode.Address createFromParcel(Parcel paramAnonymousParcel)
      {
        return new Barcode.Address(paramAnonymousParcel, null);
      }

      public Barcode.Address[] newArray(int paramAnonymousInt)
      {
        return new Barcode.Address[paramAnonymousInt];
      }
    };
    public static final int HOME = 2;
    public static final int UNKNOWN = 0;
    public static final int WORK = 1;
    public String[] addressLines;
    public int type;

    public Address()
    {
    }

    private Address(Parcel paramParcel)
    {
      this.type = paramParcel.readInt();
      this.addressLines = paramParcel.createStringArray();
    }

    public int describeContents()
    {
      return 0;
    }

    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      paramParcel.writeInt(this.type);
      paramParcel.writeStringArray(this.addressLines);
    }
  }

  public static class CalendarDateTime
    implements Parcelable
  {
    public static final Parcelable.Creator<CalendarDateTime> CREATOR = new Parcelable.Creator()
    {
      public Barcode.CalendarDateTime createFromParcel(Parcel paramAnonymousParcel)
      {
        return new Barcode.CalendarDateTime(paramAnonymousParcel, null);
      }

      public Barcode.CalendarDateTime[] newArray(int paramAnonymousInt)
      {
        return new Barcode.CalendarDateTime[paramAnonymousInt];
      }
    };
    public int day;
    public int hours;
    public boolean isUtc;
    public int minutes;
    public int month;
    public String rawValue;
    public int seconds;
    public int year;

    public CalendarDateTime()
    {
    }

    private CalendarDateTime(Parcel paramParcel)
    {
      this.year = paramParcel.readInt();
      this.month = paramParcel.readInt();
      this.day = paramParcel.readInt();
      this.hours = paramParcel.readInt();
      this.minutes = paramParcel.readInt();
      this.seconds = paramParcel.readInt();
      if (paramParcel.readByte() != 0);
      for (boolean bool = true; ; bool = false)
      {
        this.isUtc = bool;
        this.rawValue = paramParcel.readString();
        return;
      }
    }

    public int describeContents()
    {
      return 0;
    }

    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      paramParcel.writeInt(this.year);
      paramParcel.writeInt(this.month);
      paramParcel.writeInt(this.day);
      paramParcel.writeInt(this.hours);
      paramParcel.writeInt(this.minutes);
      paramParcel.writeInt(this.seconds);
      if (this.isUtc);
      for (int i = 1; ; i = 0)
      {
        paramParcel.writeByte((byte)i);
        paramParcel.writeString(this.rawValue);
        return;
      }
    }
  }

  public static class CalendarEvent
    implements Parcelable
  {
    public static final Parcelable.Creator<CalendarEvent> CREATOR = new Parcelable.Creator()
    {
      public Barcode.CalendarEvent createFromParcel(Parcel paramAnonymousParcel)
      {
        return new Barcode.CalendarEvent(paramAnonymousParcel, null);
      }

      public Barcode.CalendarEvent[] newArray(int paramAnonymousInt)
      {
        return new Barcode.CalendarEvent[paramAnonymousInt];
      }
    };
    public String description;
    public Barcode.CalendarDateTime end;
    public String location;
    public String organizer;
    public Barcode.CalendarDateTime start;
    public String status;
    public String summary;

    public CalendarEvent()
    {
    }

    private CalendarEvent(Parcel paramParcel)
    {
      this.summary = paramParcel.readString();
      this.description = paramParcel.readString();
      this.location = paramParcel.readString();
      this.organizer = paramParcel.readString();
      this.status = paramParcel.readString();
      this.start = ((Barcode.CalendarDateTime)paramParcel.readParcelable(Barcode.CalendarDateTime.class.getClassLoader()));
      this.end = ((Barcode.CalendarDateTime)paramParcel.readParcelable(Barcode.CalendarDateTime.class.getClassLoader()));
    }

    public int describeContents()
    {
      return 0;
    }

    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      paramParcel.writeString(this.summary);
      paramParcel.writeString(this.description);
      paramParcel.writeString(this.location);
      paramParcel.writeString(this.organizer);
      paramParcel.writeString(this.status);
      paramParcel.writeParcelable(this.start, 0);
      paramParcel.writeParcelable(this.end, 0);
    }
  }

  public static class ContactInfo
    implements Parcelable
  {
    public static final Parcelable.Creator<ContactInfo> CREATOR = new Parcelable.Creator()
    {
      public Barcode.ContactInfo createFromParcel(Parcel paramAnonymousParcel)
      {
        return new Barcode.ContactInfo(paramAnonymousParcel, null);
      }

      public Barcode.ContactInfo[] newArray(int paramAnonymousInt)
      {
        return new Barcode.ContactInfo[paramAnonymousInt];
      }
    };
    public Barcode.Address[] addresses;
    public Barcode.Email[] emails;
    public Barcode.PersonName name;
    public String organization;
    public Barcode.Phone[] phones;
    public String title;
    public String[] urls;

    public ContactInfo()
    {
    }

    private ContactInfo(Parcel paramParcel)
    {
      this.name = ((Barcode.PersonName)paramParcel.readParcelable(Barcode.PersonName.class.getClassLoader()));
      this.organization = paramParcel.readString();
      this.title = paramParcel.readString();
      this.phones = ((Barcode.Phone[])paramParcel.createTypedArray(Barcode.Phone.CREATOR));
      this.emails = ((Barcode.Email[])paramParcel.createTypedArray(Barcode.Email.CREATOR));
      this.urls = paramParcel.createStringArray();
      this.addresses = ((Barcode.Address[])paramParcel.createTypedArray(Barcode.Address.CREATOR));
    }

    public int describeContents()
    {
      return 0;
    }

    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      paramParcel.writeParcelable(this.name, 0);
      paramParcel.writeString(this.organization);
      paramParcel.writeString(this.title);
      paramParcel.writeTypedArray(this.phones, 0);
      paramParcel.writeTypedArray(this.emails, 0);
      paramParcel.writeStringArray(this.urls);
      paramParcel.writeTypedArray(this.addresses, 0);
    }
  }

  public static class Email
    implements Parcelable
  {
    public static final Parcelable.Creator<Email> CREATOR = new Parcelable.Creator()
    {
      public Barcode.Email createFromParcel(Parcel paramAnonymousParcel)
      {
        return new Barcode.Email(paramAnonymousParcel, null);
      }

      public Barcode.Email[] newArray(int paramAnonymousInt)
      {
        return new Barcode.Email[paramAnonymousInt];
      }
    };
    public static final int HOME = 2;
    public static final int UNKNOWN = 0;
    public static final int WORK = 1;
    public String address;
    public String body;
    public String subject;
    public int type;

    public Email()
    {
    }

    private Email(Parcel paramParcel)
    {
      this.type = paramParcel.readInt();
      this.address = paramParcel.readString();
      this.subject = paramParcel.readString();
      this.body = paramParcel.readString();
    }

    public int describeContents()
    {
      return 0;
    }

    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      paramParcel.writeInt(this.type);
      paramParcel.writeString(this.address);
      paramParcel.writeString(this.subject);
      paramParcel.writeString(this.body);
    }
  }

  public static class GeoPoint
    implements Parcelable
  {
    public static final Parcelable.Creator<GeoPoint> CREATOR = new Parcelable.Creator()
    {
      public Barcode.GeoPoint createFromParcel(Parcel paramAnonymousParcel)
      {
        return new Barcode.GeoPoint(paramAnonymousParcel, null);
      }

      public Barcode.GeoPoint[] newArray(int paramAnonymousInt)
      {
        return new Barcode.GeoPoint[paramAnonymousInt];
      }
    };
    public double lat;
    public double lng;

    public GeoPoint()
    {
    }

    private GeoPoint(Parcel paramParcel)
    {
      this.lat = paramParcel.readDouble();
      this.lng = paramParcel.readDouble();
    }

    public int describeContents()
    {
      return 0;
    }

    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      paramParcel.writeDouble(this.lat);
      paramParcel.writeDouble(this.lng);
    }
  }

  public static class PersonName
    implements Parcelable
  {
    public static final Parcelable.Creator<PersonName> CREATOR = new Parcelable.Creator()
    {
      public Barcode.PersonName createFromParcel(Parcel paramAnonymousParcel)
      {
        return new Barcode.PersonName(paramAnonymousParcel, null);
      }

      public Barcode.PersonName[] newArray(int paramAnonymousInt)
      {
        return new Barcode.PersonName[paramAnonymousInt];
      }
    };
    public String first;
    public String formattedName;
    public String last;
    public String middle;
    public String prefix;
    public String pronunciation;
    public String suffix;

    public PersonName()
    {
    }

    private PersonName(Parcel paramParcel)
    {
      this.formattedName = paramParcel.readString();
      this.pronunciation = paramParcel.readString();
      this.prefix = paramParcel.readString();
      this.first = paramParcel.readString();
      this.middle = paramParcel.readString();
      this.last = paramParcel.readString();
      this.suffix = paramParcel.readString();
    }

    public int describeContents()
    {
      return 0;
    }

    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      paramParcel.writeString(this.formattedName);
      paramParcel.writeString(this.pronunciation);
      paramParcel.writeString(this.prefix);
      paramParcel.writeString(this.first);
      paramParcel.writeString(this.middle);
      paramParcel.writeString(this.last);
      paramParcel.writeString(this.suffix);
    }
  }

  public static class Phone
    implements Parcelable
  {
    public static final Parcelable.Creator<Phone> CREATOR = new Parcelable.Creator()
    {
      public Barcode.Phone createFromParcel(Parcel paramAnonymousParcel)
      {
        return new Barcode.Phone(paramAnonymousParcel, null);
      }

      public Barcode.Phone[] newArray(int paramAnonymousInt)
      {
        return new Barcode.Phone[paramAnonymousInt];
      }
    };
    public static final int FAX = 3;
    public static final int HOME = 2;
    public static final int MOBILE = 4;
    public static final int UNKNOWN = 0;
    public static final int WORK = 1;
    public String number;
    public int type;

    public Phone()
    {
    }

    private Phone(Parcel paramParcel)
    {
      this.type = paramParcel.readInt();
      this.number = paramParcel.readString();
    }

    public int describeContents()
    {
      return 0;
    }

    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      paramParcel.writeInt(this.type);
      paramParcel.writeString(this.number);
    }
  }

  public static class Sms
    implements Parcelable
  {
    public static final Parcelable.Creator<Sms> CREATOR = new Parcelable.Creator()
    {
      public Barcode.Sms createFromParcel(Parcel paramAnonymousParcel)
      {
        return new Barcode.Sms(paramAnonymousParcel, null);
      }

      public Barcode.Sms[] newArray(int paramAnonymousInt)
      {
        return new Barcode.Sms[paramAnonymousInt];
      }
    };
    public String message;
    public String phoneNumber;

    public Sms()
    {
    }

    private Sms(Parcel paramParcel)
    {
      this.message = paramParcel.readString();
      this.phoneNumber = paramParcel.readString();
    }

    public int describeContents()
    {
      return 0;
    }

    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      paramParcel.writeString(this.message);
      paramParcel.writeString(this.phoneNumber);
    }
  }

  public static class UrlBookmark
    implements Parcelable
  {
    public static final Parcelable.Creator<UrlBookmark> CREATOR = new Parcelable.Creator()
    {
      public Barcode.UrlBookmark createFromParcel(Parcel paramAnonymousParcel)
      {
        return new Barcode.UrlBookmark(paramAnonymousParcel, null);
      }

      public Barcode.UrlBookmark[] newArray(int paramAnonymousInt)
      {
        return new Barcode.UrlBookmark[paramAnonymousInt];
      }
    };
    public String title;
    public String url;

    public UrlBookmark()
    {
    }

    private UrlBookmark(Parcel paramParcel)
    {
      this.title = paramParcel.readString();
      this.url = paramParcel.readString();
    }

    public int describeContents()
    {
      return 0;
    }

    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      paramParcel.writeString(this.title);
      paramParcel.writeString(this.url);
    }
  }

  public static class WiFi
    implements Parcelable
  {
    public static final Parcelable.Creator<WiFi> CREATOR = new Parcelable.Creator()
    {
      public Barcode.WiFi createFromParcel(Parcel paramAnonymousParcel)
      {
        return new Barcode.WiFi(paramAnonymousParcel, null);
      }

      public Barcode.WiFi[] newArray(int paramAnonymousInt)
      {
        return new Barcode.WiFi[paramAnonymousInt];
      }
    };
    public static final int OPEN = 1;
    public static final int WEP = 3;
    public static final int WPA = 2;
    public int encryptionType;
    public String password;
    public String ssid;

    public WiFi()
    {
    }

    private WiFi(Parcel paramParcel)
    {
      this.ssid = paramParcel.readString();
      this.password = paramParcel.readString();
      this.encryptionType = paramParcel.readInt();
    }

    public int describeContents()
    {
      return 0;
    }

    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      paramParcel.writeString(this.ssid);
      paramParcel.writeString(this.password);
      paramParcel.writeInt(this.encryptionType);
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.libraries.barhopper.Barcode
 * JD-Core Version:    0.6.2
 */