.class final Lcom/google/i18n/phonenumbers/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field final synthetic a:Ljava/lang/CharSequence;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency;

.field final synthetic d:J

.field final synthetic e:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 7

    new-instance v0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;

    iget-object v1, p0, Lcom/google/i18n/phonenumbers/f;->e:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    iget-object v2, p0, Lcom/google/i18n/phonenumbers/f;->a:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/google/i18n/phonenumbers/f;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/i18n/phonenumbers/f;->c:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    iget-wide v5, p0, Lcom/google/i18n/phonenumbers/f;->d:J

    invoke-direct/range {v0 .. v6}, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;-><init>(Lcom/google/i18n/phonenumbers/PhoneNumberUtil;Ljava/lang/CharSequence;Ljava/lang/String;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency;J)V

    return-object v0
.end method
