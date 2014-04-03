.class public Lcom/google/glass/maps/directions/StepCardView;
.super Lcom/google/glass/widget/horizontalscroll/LinearLayoutCard;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Lcom/google/glass/logging/i;


# instance fields
.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Lcom/google/glass/maps/SchematicView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/glass/maps/directions/StepCardView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/maps/directions/StepCardView;->a:Ljava/lang/String;

    sget-object v0, Lcom/google/glass/maps/directions/StepCardView;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/logging/j;->a(Ljava/lang/String;)Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/maps/directions/StepCardView;->b:Lcom/google/glass/logging/i;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/glass/maps/directions/StepCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/google/glass/maps/directions/StepCardView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/maps/directions/StepCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/google/glass/maps/directions/StepCardView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/widget/horizontalscroll/LinearLayoutCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/google/glass/maps/directions/StepCardView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/google/glass/maps/bo;->transit_step_card:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    sget v0, Lcom/google/glass/maps/bm;->departure_time:I

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/directions/StepCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/glass/maps/directions/StepCardView;->c:Landroid/widget/TextView;

    sget v0, Lcom/google/glass/maps/bm;->transit_mode_icon:I

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/directions/StepCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/glass/maps/directions/StepCardView;->d:Landroid/widget/ImageView;

    sget v0, Lcom/google/glass/maps/bm;->distance_duration:I

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/directions/StepCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/glass/maps/directions/StepCardView;->e:Landroid/widget/TextView;

    sget v0, Lcom/google/glass/maps/bm;->instruction:I

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/directions/StepCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/glass/maps/directions/StepCardView;->f:Landroid/widget/TextView;

    sget v0, Lcom/google/glass/maps/bm;->schematic:I

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/directions/StepCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/SchematicView;

    iput-object v0, p0, Lcom/google/glass/maps/directions/StepCardView;->g:Lcom/google/glass/maps/SchematicView;

    return-void
.end method

.method private a(Lcom/google/glass/maps/directions/b;Ljava/lang/String;Landroid/text/SpannableStringBuilder;)V
    .locals 7

    const/16 v6, 0xa0

    const/4 v5, 0x1

    const/4 v1, -0x1

    const/16 v4, 0x21

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-ge v0, v2, :cond_4

    invoke-virtual {p3, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0x2190

    if-ne v2, v3, :cond_1

    :goto_1
    if-ne v0, v1, :cond_2

    :cond_0
    :goto_2
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/glass/maps/directions/b;->g()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-wide v1, p1, Lcom/google/glass/maps/directions/b;->s:J

    invoke-static {v1, v2}, Lcom/google/glass/maps/directions/a;->b(J)Landroid/graphics/Bitmap;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    const-string v3, " "

    invoke-virtual {p3, v0, v2, v3}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v2, Landroid/text/style/ImageSpan;

    invoke-virtual {p0}, Lcom/google/glass/maps/directions/StepCardView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1, v5}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;I)V

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p3, v2, v0, v1, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    :cond_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/2addr v2, v0

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v3, v1}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p1}, Lcom/google/glass/maps/directions/b;->b()I

    move-result v3

    invoke-direct {v1, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p3, v1, v0, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v1, Landroid/text/style/BackgroundColorSpan;

    iget v3, p1, Lcom/google/glass/maps/directions/b;->o:I

    invoke-direct {v1, v3}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {p3, v1, v0, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p3, v1, v0, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v1, Lcom/google/glass/maps/directions/c;

    invoke-direct {v1, p0}, Lcom/google/glass/maps/directions/c;-><init>(Lcom/google/glass/maps/directions/StepCardView;)V

    invoke-virtual {p3, v1, v0, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public setStep(Lcom/google/glass/maps/directions/b;I)V
    .locals 11

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget v2, p1, Lcom/google/glass/maps/directions/b;->a:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    iget-object v2, p0, Lcom/google/glass/maps/directions/StepCardView;->d:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-object v2, Lcom/google/glass/maps/directions/StepCardView;->b:Lcom/google/glass/logging/i;

    const-string v3, "Unhandled step type: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p1, Lcom/google/glass/maps/directions/b;->a:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/i;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    iget-wide v2, p1, Lcom/google/glass/maps/directions/b;->f:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_6

    const/4 v2, 0x3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/maps/directions/StepCardView;->c:Landroid/widget/TextView;

    new-instance v4, Ljava/util/Date;

    iget-wide v5, p1, Lcom/google/glass/maps/directions/b;->f:J

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/google/glass/maps/directions/StepCardView;->c:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/google/glass/maps/directions/StepCardView;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/google/glass/maps/directions/StepCardView;->e:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/google/glass/maps/directions/StepCardView;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/glass/maps/directions/StepCardView;->f:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    iget-object v0, p0, Lcom/google/glass/maps/directions/StepCardView;->g:Lcom/google/glass/maps/SchematicView;

    invoke-virtual {p1}, Lcom/google/glass/maps/directions/b;->e()[Lcom/google/glass/maps/SchematicSegment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/SchematicView;->setSegments([Lcom/google/glass/maps/SchematicSegment;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/google/glass/maps/directions/StepCardView;->d:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/google/glass/maps/directions/b;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/google/glass/maps/directions/StepCardView;->d:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/google/glass/maps/directions/StepCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/glass/maps/bq;->transit_steps_distance_duration:I

    iget v2, p1, Lcom/google/glass/maps/directions/b;->q:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p1, Lcom/google/glass/maps/directions/b;->q:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {}, Lcom/google/glass/maps/c/o;->a()Lcom/google/glass/maps/c/o;

    move-result-object v5

    iget-wide v6, p1, Lcom/google/glass/maps/directions/b;->i:J

    long-to-int v6, v6

    invoke-virtual {v5, v6}, Lcom/google/glass/maps/c/o;->a(I)Landroid/text/Spannable;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    iget-object v0, p1, Lcom/google/glass/maps/directions/b;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    :goto_4
    iget-object v1, p1, Lcom/google/glass/maps/directions/b;->b:Ljava/lang/String;

    const-string v4, " -.*"

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v1, p1, Lcom/google/glass/maps/directions/b;->c:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, ""

    :goto_5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    invoke-virtual {p0}, Lcom/google/glass/maps/directions/StepCardView;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/google/glass/maps/bs;->transit_board_towards:I

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p1, Lcom/google/glass/maps/directions/b;->d:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v0, v7, v8

    const/4 v0, 0x2

    const/16 v8, 0x2190

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    aput-object v8, v7, v0

    const/4 v0, 0x3

    aput-object v1, v7, v0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :goto_6
    iget-object v0, p1, Lcom/google/glass/maps/directions/b;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    iget-object v0, p1, Lcom/google/glass/maps/directions/b;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, ""

    :goto_7
    invoke-virtual {p0}, Lcom/google/glass/maps/directions/StepCardView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v5, Lcom/google/glass/maps/bs;->transit_get_off_at:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p1, Lcom/google/glass/maps/directions/b;->e:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v0, v6, v7

    invoke-virtual {v1, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_0
    invoke-direct {p0, p1, v4, v2}, Lcom/google/glass/maps/directions/StepCardView;->a(Lcom/google/glass/maps/directions/b;Ljava/lang/String;Landroid/text/SpannableStringBuilder;)V

    move-object v0, v2

    move-object v1, v3

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/maps/directions/StepCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/glass/maps/bs;->transit_platform:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p1, Lcom/google/glass/maps/directions/b;->l:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_2
    iget-object v1, p1, Lcom/google/glass/maps/directions/b;->c:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "^"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5

    :cond_3
    invoke-virtual {p0}, Lcom/google/glass/maps/directions/StepCardView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v5, Lcom/google/glass/maps/bs;->transit_board:I

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p1, Lcom/google/glass/maps/directions/b;->d:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v0, v6, v7

    const/4 v0, 0x2

    const/16 v7, 0x2190

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-virtual {v1, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_6

    :cond_4
    invoke-virtual {p0}, Lcom/google/glass/maps/directions/StepCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/glass/maps/bs;->transit_platform:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p1, Lcom/google/glass/maps/directions/b;->m:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    :pswitch_2
    iget-object v0, p0, Lcom/google/glass/maps/directions/StepCardView;->d:Landroid/widget/ImageView;

    sget v1, Lcom/google/glass/maps/bl;->stepicon_walk:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/google/glass/maps/directions/StepCardView;->d:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-wide v0, p1, Lcom/google/glass/maps/directions/b;->h:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    invoke-virtual {p0}, Lcom/google/glass/maps/directions/StepCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/glass/maps/bs;->walk_step_distance_duration:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lcom/google/glass/maps/c/o;->a()Lcom/google/glass/maps/c/o;

    move-result-object v4

    iget-wide v5, p1, Lcom/google/glass/maps/directions/b;->h:J

    long-to-int v5, v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p2, v6}, Lcom/google/glass/maps/c/o;->a(IIZ)Landroid/text/Spannable;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Lcom/google/glass/maps/c/o;->a()Lcom/google/glass/maps/c/o;

    move-result-object v4

    iget-wide v5, p1, Lcom/google/glass/maps/directions/b;->i:J

    long-to-int v5, v5

    invoke-virtual {v4, v5}, Lcom/google/glass/maps/c/o;->a(I)Landroid/text/Spannable;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_8
    iget-object v1, p1, Lcom/google/glass/maps/directions/b;->b:Ljava/lang/String;

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/google/glass/maps/directions/StepCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/glass/maps/bs;->walk_step_duration:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lcom/google/glass/maps/c/o;->a()Lcom/google/glass/maps/c/o;

    move-result-object v4

    iget-wide v5, p1, Lcom/google/glass/maps/directions/b;->i:J

    long-to-int v5, v5

    invoke-virtual {v4, v5}, Lcom/google/glass/maps/c/o;->a(I)Landroid/text/Spannable;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :pswitch_3
    iget-object v0, p0, Lcom/google/glass/maps/directions/StepCardView;->d:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p1, Lcom/google/glass/maps/directions/b;->e:Ljava/lang/String;

    goto/16 :goto_0

    :cond_6
    iget-object v2, p0, Lcom/google/glass/maps/directions/StepCardView;->c:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_7
    iget-object v1, p0, Lcom/google/glass/maps/directions/StepCardView;->e:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_8
    iget-object v0, p0, Lcom/google/glass/maps/directions/StepCardView;->f:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
