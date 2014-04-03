.class public Lcom/google/i18n/phonenumbers/ShortNumberInfo;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/logging/Logger;

.field private static final b:Lcom/google/i18n/phonenumbers/ShortNumberInfo;


# instance fields
.field private final c:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/google/i18n/phonenumbers/ShortNumberInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->a:Ljava/util/logging/Logger;

    new-instance v0, Lcom/google/i18n/phonenumbers/ShortNumberInfo;

    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->a()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;-><init>(Lcom/google/i18n/phonenumbers/PhoneNumberUtil;)V

    sput-object v0, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->b:Lcom/google/i18n/phonenumbers/ShortNumberInfo;

    return-void
.end method

.method private constructor <init>(Lcom/google/i18n/phonenumbers/PhoneNumberUtil;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->c:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    return-void
.end method
