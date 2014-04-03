.class public final Lcom/google/glass/maps/c/o;
.super Ljava/lang/Object;


# static fields
.field public static final a:I

.field public static final b:I

.field public static final c:I

.field private static final d:I

.field private static e:Lcom/google/glass/maps/c/o;


# instance fields
.field private final f:Landroid/content/Context;

.field private final g:Lcom/google/glass/maps/c/d;

.field private final h:C

.field private final i:C

.field private j:Landroid/graphics/drawable/Drawable;

.field private k:Lcom/google/android/maps/driveabout/nav/aj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "%1$s"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/google/glass/maps/c/o;->d:I

    sget v0, Lcom/google/glass/maps/bs;->da_toward:I

    sput v0, Lcom/google/glass/maps/c/o;->a:I

    sget v0, Lcom/google/glass/maps/bs;->da_onto:I

    sput v0, Lcom/google/glass/maps/c/o;->b:I

    sget v0, Lcom/google/glass/maps/bs;->da_name_delimiter:I

    sput v0, Lcom/google/glass/maps/c/o;->c:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/glass/maps/c/o;->f:Landroid/content/Context;

    new-instance v0, Lcom/google/glass/maps/c/d;

    invoke-direct {v0, p1}, Lcom/google/glass/maps/c/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/maps/c/o;->g:Lcom/google/glass/maps/c/d;

    sget v0, Lcom/google/glass/maps/bs;->da_distance_format_separator:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iput-char v1, p0, Lcom/google/glass/maps/c/o;->h:C

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/google/glass/maps/c/o;->i:C

    return-void
.end method

.method private a(Ljava/lang/String;)I
    .locals 4

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_0

    iget-char v3, p0, Lcom/google/glass/maps/c/o;->h:C

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_1
    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private a(III)Landroid/text/Spannable;
    .locals 7

    const/16 v6, 0x21

    const/4 v1, 0x1

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    :goto_0
    iget-object v2, p0, Lcom/google/glass/maps/c/o;->g:Lcom/google/glass/maps/c/d;

    invoke-virtual {v2, p1, p2, v1, v0}, Lcom/google/glass/maps/c/d;->a(IIZI)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v0}, Lcom/google/glass/maps/c/o;->a(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_0

    and-int/lit8 v4, p3, 0x1

    if-eqz v4, :cond_0

    new-instance v4, Landroid/text/style/SuperscriptSpan;

    invoke-direct {v4}, Landroid/text/style/SuperscriptSpan;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v3, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/glass/maps/c/o;->b(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_1

    and-int/lit8 v5, p3, 0x1

    if-eqz v5, :cond_1

    new-instance v5, Landroid/text/style/SuperscriptSpan;

    invoke-direct {v5}, Landroid/text/style/SuperscriptSpan;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v5, v4, v0, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    if-ge v3, v4, :cond_2

    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v2, v0, v3, v4, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_2
    return-object v2

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private static a(Lcom/google/android/maps/driveabout/nav/aj;Landroid/graphics/drawable/Drawable;)Landroid/text/Spannable;
    .locals 6

    const/16 v5, 0x21

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/aj;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/google/glass/maps/c/i;

    const/high16 v2, 0x3f80

    invoke-direct {v1, p1, v2}, Lcom/google/glass/maps/c/i;-><init>(Landroid/graphics/drawable/Drawable;F)V

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/aj;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlenav/common/e/a/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, " "

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/aj;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    new-instance v3, Landroid/text/style/RelativeSizeSpan;

    const/high16 v4, 0x3f40

    invoke-direct {v3, v4}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v0, v3, v1, v2, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0, v3, v1, v2, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    return-object v0
.end method

.method private a(Lcom/google/android/maps/driveabout/nav/aj;Lcom/google/android/maps/driveabout/store/bd;)Landroid/text/Spannable;
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/aj;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/google/android/maps/driveabout/store/be;->a()Lcom/google/android/maps/driveabout/store/be;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/aj;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/google/android/maps/driveabout/store/be;->a(Ljava/lang/String;Lcom/google/android/maps/driveabout/store/bd;)Lcom/google/android/maps/driveabout/store/bb;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/store/bb;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/store/bb;->c()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/store/bb;->e()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    invoke-static {p1, v0}, Lcom/google/glass/maps/c/o;->a(Lcom/google/android/maps/driveabout/nav/aj;Landroid/graphics/drawable/Drawable;)Landroid/text/Spannable;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/aj;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/google/glass/maps/c/o;->b(Lcom/google/android/maps/driveabout/nav/aj;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/aj;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/maps/c/o;->c(Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v0

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spannable;
    .locals 7

    const-string v0, "%1$s"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    sget v0, Lcom/google/glass/maps/c/o;->d:I

    add-int v1, v3, v0

    const-string v0, "%2$s"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    sget v0, Lcom/google/glass/maps/c/o;->d:I

    add-int/2addr v0, v2

    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    if-ge v3, v2, :cond_0

    move v5, v2

    move v2, v1

    move v1, v5

    :goto_0
    invoke-virtual {v4, v1, v0, p2}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4, v3, v2, p1}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-object v4

    :cond_0
    move-object v5, p1

    move-object p1, p2

    move-object p2, v5

    move v6, v1

    move v1, v3

    move v3, v2

    move v2, v0

    move v0, v6

    goto :goto_0
.end method

.method public static a()Lcom/google/glass/maps/c/o;
    .locals 1

    sget-object v0, Lcom/google/glass/maps/c/o;->e:Lcom/google/glass/maps/c/o;

    return-object v0
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .locals 8

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/nav/aj;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/aj;->d()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/aj;->e()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/aj;->d()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/nav/aj;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/aj;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/aj;->e()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_4

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    :cond_4
    if-eqz v6, :cond_5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_5
    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_6
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/aj;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    move-object p0, v2

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/google/glass/maps/c/o;->e:Lcom/google/glass/maps/c/o;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/glass/maps/c/o;

    invoke-direct {v0, p0}, Lcom/google/glass/maps/c/o;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/glass/maps/c/o;->e:Lcom/google/glass/maps/c/o;

    :cond_0
    return-void
.end method

.method private static a(Lcom/google/android/maps/driveabout/nav/aj;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/aj;->d()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/aj;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)I
    .locals 4

    invoke-direct {p0, p1}, Lcom/google/glass/maps/c/o;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    if-le v0, v1, :cond_2

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_0

    iget-char v3, p0, Lcom/google/glass/maps/c/o;->i:C

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_1
    return v0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_1
.end method

.method private b(Lcom/google/android/maps/driveabout/nav/aj;)Landroid/graphics/drawable/Drawable;
    .locals 5

    const/4 v4, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/maps/c/o;->j:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/c/o;->k:Lcom/google/android/maps/driveabout/nav/aj;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/c/o;->j:Landroid/graphics/drawable/Drawable;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-object v0

    :cond_0
    monitor-exit p0

    iget-object v0, p0, Lcom/google/glass/maps/c/o;->f:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget v1, Lcom/google/glass/maps/bo;->generic_exit:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/aj;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/aj;->g()Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/nav/ah;->c()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    sget v1, Lcom/google/glass/maps/bl;->generic_exit_left:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :goto_1
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->measure(II)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/widget/TextView;->layout(IIII)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/graphics/Bitmap;->setDensity(I)V

    invoke-virtual {v2, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {v1, v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    monitor-enter p0

    :try_start_1
    iput-object v1, p0, Lcom/google/glass/maps/c/o;->j:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/google/glass/maps/c/o;->k:Lcom/google/android/maps/driveabout/nav/aj;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/aj;->g()Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/nav/ah;->c()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    sget v1, Lcom/google/glass/maps/bl;->generic_exit_right:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    :cond_2
    sget v1, Lcom/google/glass/maps/bl;->generic_exit_unknown:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static c(Ljava/lang/String;)Landroid/text/Spannable;
    .locals 1

    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method


# virtual methods
.method public final a(I)Landroid/text/Spannable;
    .locals 5

    const v2, 0x15180

    add-int/lit8 v0, p1, 0x1e

    div-int v1, v0, v2

    rem-int v2, v0, v2

    div-int/lit16 v0, v2, 0xe10

    rem-int/lit16 v2, v2, 0xe10

    div-int/lit8 v2, v2, 0x3c

    if-lez v1, :cond_1

    const/16 v3, 0x1e

    if-le v2, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x18

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    iget-object v2, p0, Lcom/google/glass/maps/c/o;->f:Landroid/content/Context;

    sget v3, Lcom/google/glass/maps/bs;->da_time_format_days:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/google/glass/maps/c/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    if-lez v0, :cond_2

    sget v1, Lcom/google/glass/maps/bs;->da_time_format_hours:I

    iget-object v3, p0, Lcom/google/glass/maps/c/o;->f:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v2}, Lcom/google/glass/maps/c/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Lcom/google/glass/maps/c/o;->f:Landroid/content/Context;

    sget v2, Lcom/google/glass/maps/bs;->da_time_format_minutes:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v1, "%1$s"

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    sget v1, Lcom/google/glass/maps/c/o;->d:I

    add-int v4, v3, v1

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v4, v0}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-object v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method public final a(IIZ)Landroid/text/Spannable;
    .locals 1

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/maps/c/o;->a(III)Landroid/text/Spannable;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/google/android/maps/driveabout/nav/ah;Lcom/google/android/maps/driveabout/store/bd;)Landroid/text/Spannable;
    .locals 4

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/ah;->v()Lcom/google/android/maps/driveabout/nav/aj;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/glass/maps/c/o;->a(Lcom/google/android/maps/driveabout/nav/aj;Lcom/google/android/maps/driveabout/store/bd;)Landroid/text/Spannable;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/maps/c/o;->f:Landroid/content/Context;

    sget v2, Lcom/google/glass/maps/bs;->da_stay_on_road_primary:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%1$s"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    sget v1, Lcom/google/glass/maps/c/o;->d:I

    add-int/2addr v1, v2

    invoke-virtual {v3, v2, v1, v0}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-object v3
.end method

.method public final a(Ljava/util/Collection;IILandroid/text/TextPaint;ILcom/google/android/maps/driveabout/store/bd;)Ljava/lang/CharSequence;
    .locals 13

    sget v1, Lcom/google/glass/maps/c/o;->a:I

    move/from16 v0, p5

    if-eq v0, v1, :cond_0

    sget v1, Lcom/google/glass/maps/c/o;->b:I

    move/from16 v0, p5

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/google/glass/maps/c/o;->f:Landroid/content/Context;

    move/from16 v0, p5

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    new-instance v9, Landroid/text/SpannableStringBuilder;

    invoke-direct {v9, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v2, "%1$s"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    sget v2, Lcom/google/glass/maps/c/o;->d:I

    add-int/2addr v2, v1

    const-string v3, ""

    invoke-virtual {v9, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/google/glass/maps/c/o;->f:Landroid/content/Context;

    sget v3, Lcom/google/glass/maps/bs;->da_name_delimiter:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v6, " "

    sget v2, Lcom/google/glass/maps/c/o;->c:I

    move/from16 v0, p5

    if-ne v0, v2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v9, v2, v7}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    move v5, v4

    move v4, v3

    move v3, v1

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    if-ge v5, p2, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/driveabout/nav/aj;

    move-object/from16 v0, p6

    invoke-direct {p0, v1, v0}, Lcom/google/glass/maps/c/o;->a(Lcom/google/android/maps/driveabout/nav/aj;Lcom/google/android/maps/driveabout/store/bd;)Landroid/text/Spannable;

    move-result-object v8

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v11

    if-gt v11, p2, :cond_3

    invoke-virtual {v9, v3, v8}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-interface {v8}, Landroid/text/Spannable;->length()I

    move-result v2

    add-int/2addr v2, v3

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "\n"

    invoke-virtual {v9, v2, v3}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v2, v2, 0x1

    move v3, v4

    move v4, v5

    :goto_2
    move v5, v4

    move v4, v3

    move v3, v2

    move-object v2, v1

    goto :goto_1

    :cond_2
    const-string v1, "%1$s"

    goto :goto_0

    :cond_3
    if-nez v2, :cond_4

    invoke-virtual {v9, v3, v8}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-interface {v8}, Landroid/text/Spannable;->length()I

    move-result v2

    add-int/2addr v2, v3

    move v3, v4

    move v4, v5

    goto :goto_2

    :cond_4
    invoke-static {v2}, Lcom/google/glass/maps/c/o;->a(Lcom/google/android/maps/driveabout/nav/aj;)Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/nav/aj;->e()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    :cond_5
    invoke-static {v1}, Lcom/google/glass/maps/c/o;->a(Lcom/google/android/maps/driveabout/nav/aj;)Z

    move-result v2

    if-nez v2, :cond_9

    move-object v2, v7

    :goto_3
    invoke-virtual {v9, v3, v2}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v11

    add-int/2addr v11, v3

    invoke-virtual {v9, v11, v8}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-interface {v8}, Landroid/text/Spannable;->length()I

    move-result v8

    add-int/2addr v8, v11

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    move-object/from16 v0, p4

    invoke-static {v9, v4, v11, v0}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v11

    move/from16 v0, p3

    int-to-float v12, v0

    cmpl-float v11, v11, v12

    if-lez v11, :cond_8

    add-int/lit8 v4, p2, -0x1

    if-ge v5, v4, :cond_6

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/2addr v4, v3

    const-string v11, "\n"

    invoke-virtual {v9, v3, v4, v11}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    sub-int v2, v8, v2

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v3, 0x1

    move v3, v4

    move v4, v5

    goto :goto_2

    :cond_6
    invoke-virtual {v9, v3, v8}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    move-object v1, v9

    :goto_4
    return-object v1

    :cond_7
    move-object v1, v9

    goto :goto_4

    :cond_8
    move v2, v8

    move v3, v4

    move v4, v5

    goto :goto_2

    :cond_9
    move-object v2, v6

    goto :goto_3

    :cond_a
    move v3, v4

    move v4, v5

    goto :goto_2
.end method
