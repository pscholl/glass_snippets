.class public Lcom/google/android/maps/driveabout/a/at;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/google/android/maps/driveabout/a/m;

.field private final c:I

.field private final d:Lcom/google/android/maps/driveabout/nav/i;


# direct methods
.method protected constructor <init>(ILcom/google/android/maps/driveabout/nav/i;Ljava/lang/CharSequence;Lcom/google/android/maps/driveabout/a/m;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/maps/driveabout/a/at;->c:I

    iput-object p2, p0, Lcom/google/android/maps/driveabout/a/at;->d:Lcom/google/android/maps/driveabout/nav/i;

    instance-of v0, p3, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    check-cast p3, Landroid/text/Spanned;

    invoke-static {p3}, Lcom/google/android/maps/driveabout/a/at;->a(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/a/at;->a:Ljava/lang/String;

    :goto_0
    iput-object p4, p0, Lcom/google/android/maps/driveabout/a/at;->b:Lcom/google/android/maps/driveabout/a/m;

    return-void

    :cond_0
    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_1

    check-cast p3, Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/maps/driveabout/a/at;->a:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/android/maps/driveabout/a;->a()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_2
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/a/at;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public static a(ILjava/lang/CharSequence;Lcom/google/android/maps/driveabout/a/m;)Lcom/google/android/maps/driveabout/a/at;
    .locals 2

    new-instance v0, Lcom/google/android/maps/driveabout/a/at;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/google/android/maps/driveabout/a/at;-><init>(ILcom/google/android/maps/driveabout/nav/i;Ljava/lang/CharSequence;Lcom/google/android/maps/driveabout/a/m;)V

    return-object v0
.end method

.method public static a(Lcom/google/android/maps/driveabout/nav/i;Ljava/lang/CharSequence;Lcom/google/android/maps/driveabout/a/m;)Lcom/google/android/maps/driveabout/a/at;
    .locals 2

    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/i;->a()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    new-instance v1, Lcom/google/android/maps/driveabout/a/at;

    invoke-direct {v1, v0, p0, p1, p2}, Lcom/google/android/maps/driveabout/a/at;-><init>(ILcom/google/android/maps/driveabout/nav/i;Ljava/lang/CharSequence;Lcom/google/android/maps/driveabout/a/m;)V

    return-object v1

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private static a(Landroid/text/Spanned;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {p0}, Landroid/text/Spanned;->length()I

    move-result v1

    const-class v3, Lcom/google/android/maps/driveabout/nav/aj;

    invoke-virtual {v2, v0, v1, v3}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    move v1, v0

    :goto_0
    array-length v0, v3

    if-ge v1, v0, :cond_0

    aget-object v0, v3, v1

    check-cast v0, Lcom/google/android/maps/driveabout/nav/aj;

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/aj;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v5, v0}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/at;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Lcom/google/android/maps/driveabout/a/m;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/at;->b:Lcom/google/android/maps/driveabout/a/m;

    return-object v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/a/at;->c:I

    return v0
.end method

.method public final d()Lcom/google/android/maps/driveabout/nav/i;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/at;->d:Lcom/google/android/maps/driveabout/nav/i;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/google/android/maps/driveabout/a/at;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/android/maps/driveabout/a/at;

    iget-object v0, p1, Lcom/google/android/maps/driveabout/a/at;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/a/at;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/at;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
