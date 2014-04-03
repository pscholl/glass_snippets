.class public final Lcom/google/glass/maps/NavigationManager;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/store/bd;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/glass/util/o;

.field private final c:Lcom/google/glass/maps/c/j;

.field private final d:Lcom/google/glass/navlib/g;

.field private final e:Lcom/google/glass/maps/ca;

.field private final f:Lcom/google/glass/maps/c/o;

.field private final g:Lcom/google/glass/sound/SoundManager;

.field private final h:Lcom/google/glass/ongoing/OngoingActivityManager;

.field private final i:Landroid/text/TextPaint;

.field private final j:I

.field private final k:Lcom/google/android/maps/driveabout/store/bd;

.field private final l:Ljava/lang/Runnable;

.field private final m:Ljava/lang/Runnable;

.field private n:Lcom/google/glass/maps/NavigationManager$GuidanceState;

.field private o:J

.field private p:J

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;

.field private u:[Lcom/google/android/maps/driveabout/nav/ao;

.field private v:[Lcom/google/android/maps/driveabout/nav/ao;

.field private w:Lcom/google/glass/maps/NavigationActiveItemParams;

.field private x:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/navlib/g;Lcom/google/glass/sound/SoundManager;Lcom/google/glass/maps/ca;Lcom/google/glass/ongoing/OngoingActivityManager;)V
    .locals 8

    new-instance v4, Lcom/google/glass/util/p;

    invoke-direct {v4}, Lcom/google/glass/util/p;-><init>()V

    new-instance v5, Lcom/google/glass/maps/c/k;

    invoke-direct {v5}, Lcom/google/glass/maps/c/k;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/maps/NavigationManager;-><init>(Landroid/content/Context;Lcom/google/glass/navlib/g;Lcom/google/glass/sound/SoundManager;Lcom/google/glass/util/o;Lcom/google/glass/maps/c/j;Lcom/google/glass/maps/ca;Lcom/google/glass/ongoing/OngoingActivityManager;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/glass/navlib/g;Lcom/google/glass/sound/SoundManager;Lcom/google/glass/util/o;Lcom/google/glass/maps/c/j;Lcom/google/glass/maps/ca;Lcom/google/glass/ongoing/OngoingActivityManager;)V
    .locals 3
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/glass/maps/as;

    invoke-direct {v0, p0}, Lcom/google/glass/maps/as;-><init>(Lcom/google/glass/maps/NavigationManager;)V

    iput-object v0, p0, Lcom/google/glass/maps/NavigationManager;->k:Lcom/google/android/maps/driveabout/store/bd;

    new-instance v0, Lcom/google/glass/maps/at;

    invoke-direct {v0, p0}, Lcom/google/glass/maps/at;-><init>(Lcom/google/glass/maps/NavigationManager;)V

    iput-object v0, p0, Lcom/google/glass/maps/NavigationManager;->l:Ljava/lang/Runnable;

    new-instance v0, Lcom/google/glass/maps/au;

    invoke-direct {v0, p0}, Lcom/google/glass/maps/au;-><init>(Lcom/google/glass/maps/NavigationManager;)V

    iput-object v0, p0, Lcom/google/glass/maps/NavigationManager;->m:Ljava/lang/Runnable;

    sget-object v0, Lcom/google/glass/maps/NavigationManager$GuidanceState;->STOPPED:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    iput-object v0, p0, Lcom/google/glass/maps/NavigationManager;->n:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    iput-object p1, p0, Lcom/google/glass/maps/NavigationManager;->a:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/glass/maps/NavigationManager;->b:Lcom/google/glass/util/o;

    iput-object p5, p0, Lcom/google/glass/maps/NavigationManager;->c:Lcom/google/glass/maps/c/j;

    iput-object p2, p0, Lcom/google/glass/maps/NavigationManager;->d:Lcom/google/glass/navlib/g;

    iput-object p6, p0, Lcom/google/glass/maps/NavigationManager;->e:Lcom/google/glass/maps/ca;

    invoke-static {}, Lcom/google/glass/maps/c/o;->a()Lcom/google/glass/maps/c/o;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/NavigationManager;->f:Lcom/google/glass/maps/c/o;

    iput-object p3, p0, Lcom/google/glass/maps/NavigationManager;->g:Lcom/google/glass/sound/SoundManager;

    iput-object p7, p0, Lcom/google/glass/maps/NavigationManager;->h:Lcom/google/glass/ongoing/OngoingActivityManager;

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/NavigationManager;->i:Landroid/text/TextPaint;

    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->i:Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/google/glass/widget/aj;->a(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->i:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/glass/maps/bk;->large_text_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/glass/maps/bk;->max_cue_width_for_formatting:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/glass/maps/NavigationManager;->j:I

    new-instance v0, Lcom/google/glass/maps/av;

    invoke-direct {v0, p0}, Lcom/google/glass/maps/av;-><init>(Lcom/google/glass/maps/NavigationManager;)V

    invoke-interface {p2, v0}, Lcom/google/glass/navlib/g;->a(Lcom/google/glass/navlib/NavigationListener;)V

    return-void
.end method

.method private static a(Landroid/content/res/Resources;I)I
    .locals 1

    packed-switch p1, :pswitch_data_0

    sget v0, Lcom/google/glass/maps/bj;->traffic_status_unknown:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    sget v0, Lcom/google/glass/maps/bj;->traffic_status_green:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    :pswitch_1
    sget v0, Lcom/google/glass/maps/bj;->traffic_status_yellow:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    :pswitch_2
    sget v0, Lcom/google/glass/maps/bj;->traffic_status_red:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Lcom/google/android/maps/driveabout/nav/ao;)Landroid/text/SpannableString;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/ao;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/ao;->e()Lcom/google/android/maps/driveabout/nav/ap;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/ao;->e()Lcom/google/android/maps/driveabout/nav/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ap;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/text/SpannableString;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private a(Lcom/google/android/maps/driveabout/nav/p;)Lcom/google/glass/maps/NavigationManager$GuidanceState;
    .locals 4

    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->n:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    sget-object v1, Lcom/google/glass/maps/NavigationManager$GuidanceState;->GETTING_DIRECTIONS:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->u:[Lcom/google/android/maps/driveabout/nav/ao;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/glass/maps/NavigationManager$GuidanceState;->SELECT_DESTINATION:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->n:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    sget-object v1, Lcom/google/glass/maps/NavigationManager$GuidanceState;->GETTING_DIRECTIONS:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/p;->f()Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/glass/maps/NavigationManager;->r:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/google/glass/maps/NavigationManager;->s:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->b:Lcom/google/glass/util/o;

    invoke-interface {v0}, Lcom/google/glass/util/o;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/maps/NavigationManager;->p:J

    sget-object v0, Lcom/google/glass/maps/NavigationManager$GuidanceState;->SELECT_DESTINATION:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/google/glass/maps/NavigationManager$GuidanceState;->ON_ROUTE:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->n:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    sget-object v1, Lcom/google/glass/maps/NavigationManager$GuidanceState;->SELECT_DESTINATION:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->u:[Lcom/google/android/maps/driveabout/nav/ao;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->b:Lcom/google/glass/util/o;

    invoke-interface {v0}, Lcom/google/glass/util/o;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/glass/maps/NavigationManager;->p:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xfa0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    sget-object v0, Lcom/google/glass/maps/NavigationManager$GuidanceState;->ON_ROUTE:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->n:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    sget-object v1, Lcom/google/glass/maps/NavigationManager$GuidanceState;->ON_ROUTE:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    if-ne v0, v1, :cond_4

    invoke-direct {p0, p1}, Lcom/google/glass/maps/NavigationManager;->b(Lcom/google/android/maps/driveabout/nav/p;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/google/glass/maps/NavigationManager$GuidanceState;->REROUTING:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->n:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    sget-object v1, Lcom/google/glass/maps/NavigationManager$GuidanceState;->REROUTING:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    if-ne v0, v1, :cond_5

    invoke-direct {p0, p1}, Lcom/google/glass/maps/NavigationManager;->b(Lcom/google/android/maps/driveabout/nav/p;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/google/glass/maps/NavigationManager$GuidanceState;->ON_ROUTE:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationManager;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->d:Lcom/google/glass/navlib/g;

    invoke-interface {v0}, Lcom/google/glass/navlib/g;->i()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/google/glass/maps/NavigationManager$GuidanceState;->ROUTE_COMPLETED:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->n:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/glass/maps/NavigationManager;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->l:Ljava/lang/Runnable;

    return-object v0
.end method

.method private a(Lcom/google/android/maps/driveabout/nav/i;I)V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->d:Lcom/google/glass/navlib/g;

    invoke-interface {v0}, Lcom/google/glass/navlib/g;->c()Lcom/google/glass/navlib/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/maps/NavigationManager;->d:Lcom/google/glass/navlib/g;

    invoke-interface {v1}, Lcom/google/glass/navlib/g;->d()Lcom/google/android/maps/driveabout/nav/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/nav/p;->f()Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/nav/w;->m()I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Lcom/google/glass/navlib/a;->a(Lcom/google/android/maps/driveabout/nav/i;II)V

    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/nav/p;Lcom/google/android/maps/driveabout/nav/ah;)V
    .locals 4

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/nav/ah;->k()Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/maps/NavigationManager;->f:Lcom/google/glass/maps/c/o;

    invoke-virtual {v1, v0, p0}, Lcom/google/glass/maps/c/o;->a(Lcom/google/android/maps/driveabout/nav/ah;Lcom/google/android/maps/driveabout/store/bd;)Landroid/text/Spannable;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/maps/NavigationManager;->e:Lcom/google/glass/maps/ca;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/maps/ca;->a(Lcom/google/glass/maps/j;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->f:Lcom/google/glass/maps/c/o;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/p;->a()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/p;->f()Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/nav/w;->m()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/maps/c/o;->a(IIZ)Landroid/text/Spannable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/maps/NavigationManager;->e:Lcom/google/glass/maps/ca;

    invoke-virtual {v1, v0}, Lcom/google/glass/maps/ca;->b(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic a(Lcom/google/glass/maps/NavigationManager;Lcom/google/android/maps/driveabout/nav/i;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/glass/maps/NavigationManager;->b(Lcom/google/android/maps/driveabout/nav/i;I)V

    return-void
.end method

.method static synthetic a(Lcom/google/glass/maps/NavigationManager;Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;[Lcom/google/android/maps/driveabout/nav/ao;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/glass/maps/NavigationManager;->a(Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;[Lcom/google/android/maps/driveabout/nav/ao;)V

    return-void
.end method

.method private a(Lcom/google/glass/maps/j;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/google/glass/maps/NavigationActiveItemParams;

    sget-object v1, Lcom/google/glass/maps/NavigationActiveItemParams$CardType;->NAVIGATION:Lcom/google/glass/maps/NavigationActiveItemParams$CardType;

    invoke-direct {v0, v1}, Lcom/google/glass/maps/NavigationActiveItemParams;-><init>(Lcom/google/glass/maps/NavigationActiveItemParams$CardType;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/glass/maps/j;->a()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/NavigationActiveItemParams;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p2}, Lcom/google/glass/maps/NavigationActiveItemParams;->a(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/google/glass/maps/NavigationActiveItemParams;->c(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/google/glass/maps/NavigationActiveItemParams;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/glass/maps/NavigationManager;->w:Lcom/google/glass/maps/NavigationActiveItemParams;

    invoke-static {v1, v0}, Lcom/google/glass/maps/c/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return-void

    :cond_1
    iput-object v0, p0, Lcom/google/glass/maps/NavigationManager;->w:Lcom/google/glass/maps/NavigationActiveItemParams;

    iget-object v1, p0, Lcom/google/glass/maps/NavigationManager;->h:Lcom/google/glass/ongoing/OngoingActivityManager;

    sget-object v2, Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;->NAVIGATION:Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationActiveItemParams;->a()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/ongoing/OngoingActivityManager;->a(Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private a(Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;[Lcom/google/android/maps/driveabout/nav/ao;)V
    .locals 3

    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->n:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    sget-object v1, Lcom/google/glass/maps/NavigationManager$GuidanceState;->GETTING_DIRECTIONS:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;->REFINEMENT_NEEDED:Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;

    if-ne p1, v0, :cond_1

    const-string v0, "NavigationManager"

    const-string v1, "Refinement required."

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/glass/maps/NavigationManager;->u:[Lcom/google/android/maps/driveabout/nav/ao;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "NavigationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Route Failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/maps/NavigationManager;->n:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/glass/maps/NavigationManager;->t:Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;

    sget-object v0, Lcom/google/glass/maps/ax;->b:[I

    invoke-virtual {p1}, Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->a:Landroid/content/Context;

    sget v1, Lcom/google/glass/maps/bs;->error_generic:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/glass/maps/NavigationManager;->e:Lcom/google/glass/maps/ca;

    sget-object v0, Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;->NETWORK_FAILURE:Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;

    if-ne p1, v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v2, v1, v0}, Lcom/google/glass/maps/ca;->a(Ljava/lang/CharSequence;Z)V

    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/glass/maps/GlassUserEventLogger;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->a:Landroid/content/Context;

    sget v1, Lcom/google/glass/maps/bs;->error_network_failure:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->a:Landroid/content/Context;

    sget v1, Lcom/google/glass/maps/bs;->error_offline_routing_failure:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->a:Landroid/content/Context;

    sget v1, Lcom/google/glass/maps/bs;->error_navigation_not_supported:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->a:Landroid/content/Context;

    sget v1, Lcom/google/glass/maps/bs;->error_destination_not_found:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :pswitch_4
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/glass/maps/c/p;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static a(Lcom/google/android/maps/driveabout/nav/p;Lcom/google/android/maps/driveabout/location/DriveAboutLocation;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->f()Lcom/google/android/maps/driveabout/e/an;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/p;->a()I

    move-result v1

    const/16 v2, 0x1324

    if-le v1, v2, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/an;->g()I

    move-result v1

    const/16 v2, 0x80

    if-ge v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/an;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/p;->g()Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ah;->k()Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/glass/maps/NavigationManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/glass/maps/NavigationManager;->x:Z

    return p1
.end method

.method static synthetic b(Lcom/google/glass/maps/NavigationManager;)Lcom/google/glass/maps/c/j;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->c:Lcom/google/glass/maps/c/j;

    return-object v0
.end method

.method private static b(Lcom/google/android/maps/driveabout/nav/ao;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/ao;->e()Lcom/google/android/maps/driveabout/nav/ap;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/ao;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/ao;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/nav/ap;->a()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/nav/ap;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Lcom/google/android/maps/driveabout/nav/i;I)V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->e:Lcom/google/glass/maps/ca;

    invoke-virtual {v0, v4}, Lcom/google/glass/maps/ca;->c(Z)V

    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->d:Lcom/google/glass/navlib/g;

    invoke-interface {v0}, Lcom/google/glass/navlib/g;->d()Lcom/google/android/maps/driveabout/nav/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/p;->f()Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/w;->m()I

    move-result v1

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/i;->a()I

    move-result v2

    if-ne v2, v4, :cond_1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/i;->e()Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/nav/ah;->b()I

    move-result v2

    const/16 v3, 0x10

    if-ne v2, v3, :cond_1

    sget-object v0, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/google/glass/maps/NavigationManager;->x:Z

    if-nez v2, :cond_3

    if-eqz v0, :cond_3

    iput-boolean v4, p0, Lcom/google/glass/maps/NavigationManager;->x:Z

    iget-object v2, p0, Lcom/google/glass/maps/NavigationManager;->g:Lcom/google/glass/sound/SoundManager;

    new-instance v3, Lcom/google/glass/maps/aw;

    invoke-direct {v3, p0, p1, p2, v1}, Lcom/google/glass/maps/aw;-><init>(Lcom/google/glass/maps/NavigationManager;Lcom/google/android/maps/driveabout/nav/i;II)V

    invoke-virtual {v2, v0, v3}, Lcom/google/glass/sound/SoundManager;->a(Lcom/google/glass/sound/SoundManager$SoundId;Lcom/google/glass/sound/g;)I

    :goto_1
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/i;->a()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/i;->a()I

    move-result v2

    if-ne v2, v4, :cond_0

    :cond_2
    sget-object v0, Lcom/google/glass/sound/SoundManager$SoundId;->NOTIFICATION_NAVIGATION:Lcom/google/glass/sound/SoundManager$SoundId;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->d:Lcom/google/glass/navlib/g;

    invoke-interface {v0}, Lcom/google/glass/navlib/g;->c()Lcom/google/glass/navlib/a;

    move-result-object v0

    invoke-interface {v0, p1, p2, v1}, Lcom/google/glass/navlib/a;->b(Lcom/google/android/maps/driveabout/nav/i;II)V

    goto :goto_1
.end method

.method private b(Lcom/google/android/maps/driveabout/nav/p;Lcom/google/android/maps/driveabout/nav/ah;)V
    .locals 7

    const/4 v5, 0x0

    invoke-static {p2}, Lcom/google/glass/maps/c/m;->a(Lcom/google/android/maps/driveabout/nav/ah;)Ljava/util/List;

    move-result-object v1

    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->f:Lcom/google/glass/maps/c/o;

    const/4 v2, 0x1

    iget v3, p0, Lcom/google/glass/maps/NavigationManager;->j:I

    iget-object v4, p0, Lcom/google/glass/maps/NavigationManager;->i:Landroid/text/TextPaint;

    iget-object v6, p0, Lcom/google/glass/maps/NavigationManager;->k:Lcom/google/android/maps/driveabout/store/bd;

    invoke-virtual/range {v0 .. v6}, Lcom/google/glass/maps/c/o;->a(Ljava/util/Collection;IILandroid/text/TextPaint;ILcom/google/android/maps/driveabout/store/bd;)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/maps/NavigationManager;->e:Lcom/google/glass/maps/ca;

    invoke-static {p2}, Lcom/google/glass/maps/j;->a(Lcom/google/android/maps/driveabout/nav/ah;)Lcom/google/glass/maps/j;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/maps/ca;->a(Lcom/google/glass/maps/j;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->f:Lcom/google/glass/maps/c/o;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/p;->a()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/p;->f()Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/nav/w;->m()I

    move-result v2

    invoke-virtual {v0, v1, v2, v5}, Lcom/google/glass/maps/c/o;->a(IIZ)Landroid/text/Spannable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/maps/NavigationManager;->e:Lcom/google/glass/maps/ca;

    invoke-virtual {v1, v0}, Lcom/google/glass/maps/ca;->b(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic b(Lcom/google/glass/maps/NavigationManager;Lcom/google/android/maps/driveabout/nav/i;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/glass/maps/NavigationManager;->a(Lcom/google/android/maps/driveabout/nav/i;I)V

    return-void
.end method

.method private b(Lcom/google/android/maps/driveabout/nav/p;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/p;->j()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->d:Lcom/google/glass/navlib/g;

    invoke-interface {v0}, Lcom/google/glass/navlib/g;->h()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/glass/maps/NavigationManager;->r:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(Lcom/google/android/maps/driveabout/nav/ao;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/ao;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/ao;->f()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/ao;->e()Lcom/google/android/maps/driveabout/nav/ap;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/ao;->e()Lcom/google/android/maps/driveabout/nav/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ap;->a()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/ao;->e()Lcom/google/android/maps/driveabout/nav/ap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/nav/ap;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method private c(Lcom/google/android/maps/driveabout/nav/p;Lcom/google/android/maps/driveabout/nav/ah;)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/nav/ah;->b()I

    move-result v0

    if-eq v0, v5, :cond_0

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/nav/ah;->b()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/nav/ah;->o()Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->f:Lcom/google/glass/maps/c/o;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/p;->a()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/p;->f()Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/nav/w;->m()I

    move-result v2

    invoke-virtual {v0, v1, v2, v4}, Lcom/google/glass/maps/c/o;->a(IIZ)Landroid/text/Spannable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/maps/NavigationManager;->a:Landroid/content/Context;

    sget v2, Lcom/google/glass/maps/bs;->in_distance_do:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/nav/ah;->o()Landroid/text/Spanned;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/google/glass/maps/NavigationManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/glass/maps/NavigationManager;->l()V

    return-void
.end method

.method static synthetic d(Lcom/google/glass/maps/NavigationManager;)Lcom/google/glass/maps/ca;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->e:Lcom/google/glass/maps/ca;

    return-object v0
.end method

.method static synthetic e(Lcom/google/glass/maps/NavigationManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/glass/maps/NavigationManager;->n()V

    return-void
.end method

.method static synthetic f(Lcom/google/glass/maps/NavigationManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/glass/maps/NavigationManager;->o()V

    return-void
.end method

.method static synthetic g(Lcom/google/glass/maps/NavigationManager;)Lcom/google/glass/navlib/g;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->d:Lcom/google/glass/navlib/g;

    return-object v0
.end method

.method private l()V
    .locals 13

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {}, Lcom/google/glass/f/a;->c()V

    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->d:Lcom/google/glass/navlib/g;

    invoke-interface {v0}, Lcom/google/glass/navlib/g;->d()Lcom/google/android/maps/driveabout/nav/p;

    move-result-object v6

    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->d:Lcom/google/glass/navlib/g;

    invoke-interface {v0}, Lcom/google/glass/navlib/g;->e()Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    move-result-object v1

    invoke-direct {p0, v6}, Lcom/google/glass/maps/NavigationManager;->a(Lcom/google/android/maps/driveabout/nav/p;)Lcom/google/glass/maps/NavigationManager$GuidanceState;

    move-result-object v0

    iget-object v7, p0, Lcom/google/glass/maps/NavigationManager;->n:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    invoke-virtual {v0, v7}, Lcom/google/glass/maps/NavigationManager$GuidanceState;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "NavigationManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "State Transition: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/google/glass/maps/NavigationManager;->n:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " -> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Lcom/google/glass/maps/NavigationManager$GuidanceState;->ROUTE_COMPLETED:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    if-ne v0, v7, :cond_0

    iget-object v7, p0, Lcom/google/glass/maps/NavigationManager;->c:Lcom/google/glass/maps/c/j;

    iget-object v8, p0, Lcom/google/glass/maps/NavigationManager;->m:Ljava/lang/Runnable;

    const-wide/16 v9, 0x1388

    invoke-interface {v7, v8, v9, v10}, Lcom/google/glass/maps/c/j;->a(Ljava/lang/Runnable;J)V

    :cond_0
    sget-object v7, Lcom/google/glass/maps/NavigationManager$GuidanceState;->ON_ROUTE:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    if-ne v0, v7, :cond_4

    iget-object v7, p0, Lcom/google/glass/maps/NavigationManager;->e:Lcom/google/glass/maps/ca;

    invoke-virtual {v7}, Lcom/google/glass/maps/ca;->E()V

    :goto_0
    iput-object v0, p0, Lcom/google/glass/maps/NavigationManager;->n:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    :cond_1
    sget-object v0, Lcom/google/glass/maps/ax;->a:[I

    iget-object v7, p0, Lcom/google/glass/maps/NavigationManager;->n:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    invoke-virtual {v7}, Lcom/google/glass/maps/NavigationManager$GuidanceState;->ordinal()I

    move-result v7

    aget v0, v0, v7

    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->n:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    sget-object v2, Lcom/google/glass/maps/NavigationManager$GuidanceState;->GETTING_DIRECTIONS:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->n:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    sget-object v2, Lcom/google/glass/maps/NavigationManager$GuidanceState;->SELECT_DESTINATION:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    if-eq v0, v2, :cond_3

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/google/glass/maps/NavigationManager;->p()Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;-><init>(Landroid/location/Location;)V

    iget-object v1, p0, Lcom/google/glass/maps/NavigationManager;->d:Lcom/google/glass/navlib/g;

    invoke-interface {v1}, Lcom/google/glass/navlib/g;->f()Lcom/google/android/maps/driveabout/location/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/location/z;->c()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->setBearing(F)V

    :goto_2
    iget-object v1, p0, Lcom/google/glass/maps/NavigationManager;->e:Lcom/google/glass/maps/ca;

    invoke-virtual {v1, v0}, Lcom/google/glass/maps/ca;->a(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;)V

    iget-boolean v1, p0, Lcom/google/glass/maps/NavigationManager;->q:Z

    if-eqz v1, :cond_f

    const/high16 v1, -0x4080

    invoke-virtual {v6, v1}, Lcom/google/android/maps/driveabout/nav/p;->a(F)Lcom/google/android/maps/driveabout/e/ar;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/e/ar;->c()Lcom/google/android/maps/driveabout/e/al;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->getLongitude()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lcom/google/android/maps/driveabout/e/ab;->a(DD)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/google/android/maps/driveabout/e/al;->a(Lcom/google/android/maps/driveabout/e/ab;I)Lcom/google/android/maps/driveabout/e/al;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/e/al;->a(Lcom/google/android/maps/driveabout/e/al;)Lcom/google/android/maps/driveabout/e/al;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/maps/NavigationManager;->e:Lcom/google/glass/maps/ca;

    invoke-virtual {v1, v0}, Lcom/google/glass/maps/ca;->a(Lcom/google/android/maps/driveabout/e/al;)V

    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->e:Lcom/google/glass/maps/ca;

    invoke-direct {p0}, Lcom/google/glass/maps/NavigationManager;->m()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/ca;->c(Z)V

    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->c:Lcom/google/glass/maps/c/j;

    iget-object v1, p0, Lcom/google/glass/maps/NavigationManager;->l:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/google/glass/maps/c/j;->a(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->c:Lcom/google/glass/maps/c/j;

    iget-object v1, p0, Lcom/google/glass/maps/NavigationManager;->l:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-interface {v0, v1, v2, v3}, Lcom/google/glass/maps/c/j;->a(Ljava/lang/Runnable;J)V

    return-void

    :cond_4
    iput-boolean v3, p0, Lcom/google/glass/maps/NavigationManager;->q:Z

    goto :goto_0

    :pswitch_0
    sget v0, Lcom/google/glass/maps/bs;->directions:I

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/glass/maps/NavigationManager;->e:Lcom/google/glass/maps/ca;

    iget-object v4, p0, Lcom/google/glass/maps/NavigationManager;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/glass/maps/c/p;->a(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v2, v4, v0}, Lcom/google/glass/maps/ca;->a(ILjava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->e:Lcom/google/glass/maps/ca;

    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/google/glass/maps/ca;->c(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->e:Lcom/google/glass/maps/ca;

    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/google/glass/maps/ca;->d(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->e:Lcom/google/glass/maps/ca;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/google/glass/maps/ca;->a(I)V

    goto/16 :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->u:[Lcom/google/android/maps/driveabout/nav/ao;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->e:Lcom/google/glass/maps/ca;

    iget-object v2, p0, Lcom/google/glass/maps/NavigationManager;->u:[Lcom/google/android/maps/driveabout/nav/ao;

    invoke-virtual {v0, v2}, Lcom/google/glass/maps/ca;->a([Lcom/google/android/maps/driveabout/nav/ao;)V

    goto/16 :goto_1

    :cond_5
    invoke-virtual {v6}, Lcom/google/android/maps/driveabout/nav/p;->f()Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->e:Lcom/google/glass/maps/ca;

    new-array v2, v2, [Lcom/google/android/maps/driveabout/nav/ao;

    invoke-virtual {v6}, Lcom/google/android/maps/driveabout/nav/p;->f()Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/nav/w;->j()Lcom/google/android/maps/driveabout/nav/ao;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Lcom/google/glass/maps/ca;->a([Lcom/google/android/maps/driveabout/nav/ao;)V

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {v6}, Lcom/google/android/maps/driveabout/nav/p;->f()Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v7

    if-eqz v7, :cond_7

    iget-object v8, p0, Lcom/google/glass/maps/NavigationManager;->e:Lcom/google/glass/maps/ca;

    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/nav/w;->k()Lcom/google/android/maps/driveabout/e/af;

    move-result-object v9

    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/nav/w;->p()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v8, v9, v0}, Lcom/google/glass/maps/ca;->a(Lcom/google/android/maps/driveabout/e/af;Ljava/util/List;)V

    :goto_4
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->f:Lcom/google/glass/maps/c/o;

    invoke-virtual {v6}, Lcom/google/android/maps/driveabout/nav/p;->b()I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/google/glass/maps/c/o;->a(I)Landroid/text/Spannable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Lcom/google/android/maps/driveabout/nav/p;->g()Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-boolean v9, p0, Lcom/google/glass/maps/NavigationManager;->q:Z

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/google/glass/maps/NavigationManager;->e:Lcom/google/glass/maps/ca;

    invoke-virtual {v9}, Lcom/google/glass/maps/ca;->B()V

    :goto_5
    invoke-static {v0}, Lcom/google/glass/maps/j;->a(Lcom/google/android/maps/driveabout/nav/ah;)Lcom/google/glass/maps/j;

    move-result-object v9

    invoke-direct {p0, v6, v0}, Lcom/google/glass/maps/NavigationManager;->c(Lcom/google/android/maps/driveabout/nav/p;Lcom/google/android/maps/driveabout/nav/ah;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/nav/w;->j()Lcom/google/android/maps/driveabout/nav/ao;

    move-result-object v10

    invoke-static {v10}, Lcom/google/glass/maps/NavigationManager;->c(Lcom/google/android/maps/driveabout/nav/ao;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v9, v0, v10, v8}, Lcom/google/glass/maps/NavigationManager;->a(Lcom/google/glass/maps/j;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    iget-boolean v0, p0, Lcom/google/glass/maps/NavigationManager;->q:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->f:Lcom/google/glass/maps/c/o;

    invoke-virtual {v6}, Lcom/google/android/maps/driveabout/nav/p;->c()I

    move-result v4

    invoke-virtual {v6}, Lcom/google/android/maps/driveabout/nav/p;->f()Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/maps/driveabout/nav/w;->m()I

    move-result v9

    invoke-virtual {v0, v4, v9, v3}, Lcom/google/glass/maps/c/o;->a(IIZ)Landroid/text/Spannable;

    move-result-object v0

    new-instance v4, Landroid/text/SpannableString;

    iget-object v9, p0, Lcom/google/glass/maps/NavigationManager;->a:Landroid/content/Context;

    sget v10, Lcom/google/glass/maps/bs;->distance_and_time:I

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v0, v11, v3

    aput-object v8, v11, v2

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->d:Lcom/google/glass/navlib/g;

    invoke-interface {v0}, Lcom/google/glass/navlib/g;->g()Lcom/google/android/maps/driveabout/nav/ao;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/maps/NavigationManager;->a(Lcom/google/android/maps/driveabout/nav/ao;)Landroid/text/SpannableString;

    move-result-object v0

    :goto_7
    if-eqz v2, :cond_6

    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v6}, Lcom/google/android/maps/driveabout/nav/p;->i()I

    move-result v8

    invoke-static {v5, v8}, Lcom/google/glass/maps/NavigationManager;->a(Landroid/content/res/Resources;I)I

    move-result v5

    invoke-direct {v2, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v4}, Landroid/text/SpannableString;->length()I

    move-result v5

    invoke-virtual {v4, v2, v3, v5, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_6
    iget-object v2, p0, Lcom/google/glass/maps/NavigationManager;->e:Lcom/google/glass/maps/ca;

    invoke-virtual {v2, v4}, Lcom/google/glass/maps/ca;->c(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/google/glass/maps/NavigationManager;->e:Lcom/google/glass/maps/ca;

    if-eqz v0, :cond_d

    :goto_8
    invoke-virtual {v2, v0}, Lcom/google/glass/maps/ca;->d(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->e:Lcom/google/glass/maps/ca;

    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/nav/w;->b()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/glass/maps/ca;->a(I)V

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->e:Lcom/google/glass/maps/ca;

    invoke-virtual {v0}, Lcom/google/glass/maps/ca;->C()V

    goto/16 :goto_4

    :cond_8
    invoke-static {v6, v1}, Lcom/google/glass/maps/NavigationManager;->a(Lcom/google/android/maps/driveabout/nav/p;Lcom/google/android/maps/driveabout/location/DriveAboutLocation;)Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ah;->k()Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v9

    if-eqz v9, :cond_9

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ah;->k()Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/maps/driveabout/nav/ah;->v()Lcom/google/android/maps/driveabout/nav/aj;

    move-result-object v9

    if-eqz v9, :cond_9

    invoke-direct {p0, v6, v0}, Lcom/google/glass/maps/NavigationManager;->a(Lcom/google/android/maps/driveabout/nav/p;Lcom/google/android/maps/driveabout/nav/ah;)V

    goto/16 :goto_5

    :cond_9
    invoke-direct {p0, v6, v0}, Lcom/google/glass/maps/NavigationManager;->b(Lcom/google/android/maps/driveabout/nav/p;Lcom/google/android/maps/driveabout/nav/ah;)V

    goto/16 :goto_5

    :cond_a
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->e:Lcom/google/glass/maps/ca;

    invoke-virtual {v0, v4, v4}, Lcom/google/glass/maps/ca;->a(Lcom/google/glass/maps/j;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->e:Lcom/google/glass/maps/ca;

    invoke-virtual {v0, v4}, Lcom/google/glass/maps/ca;->b(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->a:Landroid/content/Context;

    sget v9, Lcom/google/glass/maps/bs;->directions_in_progress:I

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v4, v0, v4, v4}, Lcom/google/glass/maps/NavigationManager;->a(Lcom/google/glass/maps/j;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_b
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->b()Z

    move-result v0

    if-nez v0, :cond_c

    new-instance v0, Landroid/text/SpannableString;

    iget-object v2, p0, Lcom/google/glass/maps/NavigationManager;->a:Landroid/content/Context;

    sget v8, Lcom/google/glass/maps/bs;->searching_for_gps:I

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move v2, v3

    move-object v12, v4

    move-object v4, v0

    move-object v0, v12

    goto/16 :goto_7

    :cond_c
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, v8}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move-object v12, v4

    move-object v4, v0

    move-object v0, v12

    goto/16 :goto_7

    :cond_d
    const-string v0, ""

    goto :goto_8

    :pswitch_3
    sget v0, Lcom/google/glass/maps/bs;->rerouting:I

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/glass/maps/NavigationManager;->e:Lcom/google/glass/maps/ca;

    invoke-virtual {v2, v0}, Lcom/google/glass/maps/ca;->a(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/google/glass/maps/NavigationManager;->e:Lcom/google/glass/maps/ca;

    const-string v5, ""

    invoke-virtual {v2, v5}, Lcom/google/glass/maps/ca;->c(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/google/glass/maps/NavigationManager;->e:Lcom/google/glass/maps/ca;

    const-string v5, ""

    invoke-virtual {v2, v5}, Lcom/google/glass/maps/ca;->d(Ljava/lang/CharSequence;)V

    invoke-virtual {v6}, Lcom/google/android/maps/driveabout/nav/p;->f()Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/nav/w;->j()Lcom/google/android/maps/driveabout/nav/ao;

    move-result-object v2

    invoke-static {v2}, Lcom/google/glass/maps/NavigationManager;->c(Lcom/google/android/maps/driveabout/nav/ao;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v4, v0, v2, v4}, Lcom/google/glass/maps/NavigationManager;->a(Lcom/google/glass/maps/j;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_4
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->e:Lcom/google/glass/maps/ca;

    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/google/glass/maps/ca;->b(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->e:Lcom/google/glass/maps/ca;

    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/google/glass/maps/ca;->c(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->e:Lcom/google/glass/maps/ca;

    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/google/glass/maps/ca;->d(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->a:Landroid/content/Context;

    sget v2, Lcom/google/glass/maps/bs;->you_have_arrived:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/glass/maps/NavigationManager;->e:Lcom/google/glass/maps/ca;

    invoke-virtual {v2, v4, v0}, Lcom/google/glass/maps/ca;->a(Lcom/google/glass/maps/j;Ljava/lang/CharSequence;)V

    invoke-direct {p0, v4, v0, v4, v4}, Lcom/google/glass/maps/NavigationManager;->a(Lcom/google/glass/maps/j;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_e
    invoke-virtual {v6}, Lcom/google/android/maps/driveabout/nav/p;->f()Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->e:Lcom/google/glass/maps/ca;

    invoke-virtual {v6}, Lcom/google/android/maps/driveabout/nav/p;->f()Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/nav/w;->k()Lcom/google/android/maps/driveabout/e/af;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/e/af;->a()Lcom/google/android/maps/driveabout/e/al;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/ca;->a(Lcom/google/android/maps/driveabout/e/al;)V

    goto/16 :goto_3

    :cond_f
    iget-object v1, p0, Lcom/google/glass/maps/NavigationManager;->e:Lcom/google/glass/maps/ca;

    invoke-virtual {v1, v0}, Lcom/google/glass/maps/ca;->b(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;)V

    goto/16 :goto_3

    :cond_10
    move-object v0, v1

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private m()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/google/glass/maps/NavigationManager;->n:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    sget-object v3, Lcom/google/glass/maps/NavigationManager$GuidanceState;->GETTING_DIRECTIONS:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/glass/maps/NavigationManager;->n:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    sget-object v3, Lcom/google/glass/maps/NavigationManager$GuidanceState;->SELECT_DESTINATION:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/glass/maps/NavigationManager;->n:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    sget-object v3, Lcom/google/glass/maps/NavigationManager$GuidanceState;->REROUTING:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    if-ne v2, v3, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v2, p0, Lcom/google/glass/maps/NavigationManager;->n:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    sget-object v3, Lcom/google/glass/maps/NavigationManager$GuidanceState;->ON_ROUTE:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/google/glass/maps/NavigationManager;->d:Lcom/google/glass/navlib/g;

    invoke-interface {v2}, Lcom/google/glass/navlib/g;->e()Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->b()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private n()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    iput-boolean v5, p0, Lcom/google/glass/maps/NavigationManager;->r:Z

    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->d:Lcom/google/glass/navlib/g;

    invoke-interface {v0}, Lcom/google/glass/navlib/g;->d()Lcom/google/android/maps/driveabout/nav/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/p;->f()Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/w;->j()Lcom/google/android/maps/driveabout/nav/ao;

    move-result-object v0

    invoke-static {}, Lcom/google/glass/maps/ao;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/glass/maps/ao;->c()Lcom/google/glass/maps/ao;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/glass/maps/ao;->a(Lcom/google/android/maps/driveabout/nav/ao;)V

    :cond_0
    iget-object v1, p0, Lcom/google/glass/maps/NavigationManager;->a:Landroid/content/Context;

    sget v2, Lcom/google/glass/maps/bs;->directions_to:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/glass/maps/NavigationManager;->b(Lcom/google/android/maps/driveabout/nav/ao;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v4, v0, v4, v4}, Lcom/google/glass/maps/NavigationManager;->a(Lcom/google/glass/maps/j;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private o()V
    .locals 3

    invoke-static {}, Lcom/google/glass/f/a;->c()V

    invoke-direct {p0}, Lcom/google/glass/maps/NavigationManager;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->d:Lcom/google/glass/navlib/g;

    invoke-interface {v0}, Lcom/google/glass/navlib/g;->f()Lcom/google/android/maps/driveabout/location/z;

    move-result-object v0

    new-instance v1, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    iget-object v2, p0, Lcom/google/glass/maps/NavigationManager;->d:Lcom/google/glass/navlib/g;

    invoke-interface {v2}, Lcom/google/glass/navlib/g;->e()Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;-><init>(Landroid/location/Location;)V

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/location/z;->c()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->setBearing(F)V

    iget-object v2, p0, Lcom/google/glass/maps/NavigationManager;->e:Lcom/google/glass/maps/ca;

    invoke-virtual {v2, v1}, Lcom/google/glass/maps/ca;->a(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;)V

    iget-boolean v1, p0, Lcom/google/glass/maps/NavigationManager;->q:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/maps/NavigationManager;->e:Lcom/google/glass/maps/ca;

    invoke-virtual {v1, v0}, Lcom/google/glass/maps/ca;->a(Lcom/google/android/maps/driveabout/location/z;)V

    :cond_0
    return-void
.end method

.method private p()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/google/glass/maps/NavigationManager;->d:Lcom/google/glass/navlib/g;

    invoke-interface {v2}, Lcom/google/glass/navlib/g;->f()Lcom/google/android/maps/driveabout/location/z;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/glass/maps/NavigationManager;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/glass/maps/c/p;->a(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationManager;->c()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/glass/maps/NavigationManager;->n:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    sget-object v3, Lcom/google/glass/maps/NavigationManager$GuidanceState;->ROUTE_COMPLETED:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    if-ne v2, v3, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/google/glass/maps/NavigationManager;->d:Lcom/google/glass/navlib/g;

    invoke-interface {v1, v0}, Lcom/google/glass/navlib/g;->a(Z)V

    return v0

    :cond_2
    if-eqz v2, :cond_3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    :cond_3
    iget-object v2, p0, Lcom/google/glass/maps/NavigationManager;->d:Lcom/google/glass/navlib/g;

    invoke-interface {v2}, Lcom/google/glass/navlib/g;->e()Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->b()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_4
    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationManager;->c()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/google/glass/maps/NavigationManager;->n:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    sget-object v3, Lcom/google/glass/maps/NavigationManager$GuidanceState;->ROUTE_COMPLETED:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    if-ne v2, v3, :cond_1

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method private q()V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->w:Lcom/google/glass/maps/NavigationActiveItemParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/maps/NavigationManager;->w:Lcom/google/glass/maps/NavigationActiveItemParams;

    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->h:Lcom/google/glass/ongoing/OngoingActivityManager;

    sget-object v1, Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;->NAVIGATION:Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    invoke-virtual {v0, v1}, Lcom/google/glass/ongoing/OngoingActivityManager;->a(Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;)V

    :cond_0
    return-void
.end method

.method private r()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationManager;->j()I

    move-result v1

    sget-object v0, Lcom/google/glass/maps/ax;->a:[I

    iget-object v2, p0, Lcom/google/glass/maps/NavigationManager;->n:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    invoke-virtual {v2}, Lcom/google/glass/maps/NavigationManager$GuidanceState;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/google/glass/maps/GlassUserEventLogger$EndReason;->UNKNOWN:Lcom/google/glass/maps/GlassUserEventLogger$EndReason;

    :goto_0
    iget-object v2, p0, Lcom/google/glass/maps/NavigationManager;->a:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/google/glass/maps/GlassUserEventLogger;->a(Landroid/content/Context;Lcom/google/glass/maps/GlassUserEventLogger$EndReason;I)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->t:Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/glass/maps/GlassUserEventLogger$EndReason;->CANCEL_GETTING_DIRECTIONS:Lcom/google/glass/maps/GlassUserEventLogger$EndReason;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->t:Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;

    sget-object v2, Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;->NETWORK_FAILURE:Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;

    if-ne v0, v2, :cond_1

    sget-object v0, Lcom/google/glass/maps/GlassUserEventLogger$EndReason;->NETWORK_ERROR:Lcom/google/glass/maps/GlassUserEventLogger$EndReason;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->t:Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;

    sget-object v2, Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;->DESTINATION_NOT_FOUND:Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;

    if-ne v0, v2, :cond_2

    sget-object v0, Lcom/google/glass/maps/GlassUserEventLogger$EndReason;->DESTINATION_NOT_FOUND:Lcom/google/glass/maps/GlassUserEventLogger$EndReason;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->t:Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;

    sget-object v2, Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;->ROUTING_ERROR:Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;

    if-ne v0, v2, :cond_3

    sget-object v0, Lcom/google/glass/maps/GlassUserEventLogger$EndReason;->ROUTING_ERROR:Lcom/google/glass/maps/GlassUserEventLogger$EndReason;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/google/glass/maps/GlassUserEventLogger$EndReason;->UNKNOWN_FAILURE:Lcom/google/glass/maps/GlassUserEventLogger$EndReason;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/google/glass/maps/GlassUserEventLogger$EndReason;->CANCEL_SELECT_DESTINATION:Lcom/google/glass/maps/GlassUserEventLogger$EndReason;

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x3c

    if-ge v1, v0, :cond_4

    sget-object v0, Lcom/google/glass/maps/GlassUserEventLogger$EndReason;->CANCEL_EARLY_IN_ROUTE:Lcom/google/glass/maps/GlassUserEventLogger$EndReason;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/google/glass/maps/GlassUserEventLogger$EndReason;->MANUAL_STOP:Lcom/google/glass/maps/GlassUserEventLogger$EndReason;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/google/glass/maps/GlassUserEventLogger$EndReason;->ROUTE_COMPLETE:Lcom/google/glass/maps/GlassUserEventLogger$EndReason;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->e:Lcom/google/glass/maps/ca;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/ca;->a(Lcom/google/glass/maps/bf;)V

    return-void
.end method

.method public final a(Lcom/google/android/maps/driveabout/store/bb;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/glass/maps/NavigationManager;->l()V

    return-void
.end method

.method public final a(Lcom/google/glass/maps/bf;)V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->e:Lcom/google/glass/maps/ca;

    invoke-virtual {v0, p1}, Lcom/google/glass/maps/ca;->a(Lcom/google/glass/maps/bf;)V

    invoke-direct {p0}, Lcom/google/glass/maps/NavigationManager;->l()V

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/glass/maps/NavigationManager;->q:Z

    invoke-direct {p0}, Lcom/google/glass/maps/NavigationManager;->l()V

    return-void
.end method

.method public final a([Lcom/google/android/maps/driveabout/nav/ao;IZZ)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lcom/google/glass/f/a;->c()V

    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->a:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/google/glass/maps/c/p;->a(Landroid/content/Context;I)I

    move-result v0

    const-string v1, "NavigationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StartNavigating: mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    iget-object v1, p0, Lcom/google/glass/maps/NavigationManager;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/glass/maps/GlassUserEventLogger;->a(Landroid/content/Context;)V

    :cond_0
    iget-object v1, p0, Lcom/google/glass/maps/NavigationManager;->b:Lcom/google/glass/util/o;

    invoke-interface {v1}, Lcom/google/glass/util/o;->a()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/glass/maps/NavigationManager;->o:J

    iput-object p1, p0, Lcom/google/glass/maps/NavigationManager;->v:[Lcom/google/android/maps/driveabout/nav/ao;

    iget-object v1, p0, Lcom/google/glass/maps/NavigationManager;->d:Lcom/google/glass/navlib/g;

    iget-object v2, p0, Lcom/google/glass/maps/NavigationManager;->v:[Lcom/google/android/maps/driveabout/nav/ao;

    invoke-interface {v1, v2, v0}, Lcom/google/glass/navlib/g;->a([Lcom/google/android/maps/driveabout/nav/ao;I)V

    iput-boolean v4, p0, Lcom/google/glass/maps/NavigationManager;->r:Z

    iput-boolean p3, p0, Lcom/google/glass/maps/NavigationManager;->s:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/maps/NavigationManager;->q:Z

    iput-object v5, p0, Lcom/google/glass/maps/NavigationManager;->t:Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;

    iput-object v5, p0, Lcom/google/glass/maps/NavigationManager;->u:[Lcom/google/android/maps/driveabout/nav/ao;

    sget-object v0, Lcom/google/glass/maps/NavigationManager$GuidanceState;->GETTING_DIRECTIONS:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    iput-object v0, p0, Lcom/google/glass/maps/NavigationManager;->n:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    invoke-static {}, Lcom/google/glass/maps/ao;->c()Lcom/google/glass/maps/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/maps/ao;->j()Lcom/google/android/maps/driveabout/c/v;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/glass/maps/GlassUserEventLogger;->a()V

    iget-object v1, p0, Lcom/google/glass/maps/NavigationManager;->d:Lcom/google/glass/navlib/g;

    invoke-interface {v1, v0}, Lcom/google/glass/navlib/g;->a(Lcom/google/android/maps/driveabout/c/v;)V

    :cond_1
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->e:Lcom/google/glass/maps/ca;

    invoke-virtual {v0}, Lcom/google/glass/maps/ca;->b()V

    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->e:Lcom/google/glass/maps/ca;

    invoke-virtual {v0, v4}, Lcom/google/glass/maps/ca;->c(Z)V

    invoke-direct {p0}, Lcom/google/glass/maps/NavigationManager;->l()V

    return-void
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/google/glass/f/a;->c()V

    const-string v0, "NavigationManager"

    const-string v1, "StopNavigating"

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->n:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    sget-object v1, Lcom/google/glass/maps/NavigationManager$GuidanceState;->STOPPED:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/glass/maps/NavigationManager;->r()V

    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->e:Lcom/google/glass/maps/ca;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/ca;->c(Z)V

    invoke-direct {p0}, Lcom/google/glass/maps/NavigationManager;->q()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/maps/NavigationManager;->u:[Lcom/google/android/maps/driveabout/nav/ao;

    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->c:Lcom/google/glass/maps/c/j;

    iget-object v1, p0, Lcom/google/glass/maps/NavigationManager;->l:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/google/glass/maps/c/j;->a(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->c:Lcom/google/glass/maps/c/j;

    iget-object v1, p0, Lcom/google/glass/maps/NavigationManager;->m:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/google/glass/maps/c/j;->a(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->d:Lcom/google/glass/navlib/g;

    invoke-interface {v0}, Lcom/google/glass/navlib/g;->b()V

    sget-object v0, Lcom/google/glass/maps/NavigationManager$GuidanceState;->STOPPED:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    iput-object v0, p0, Lcom/google/glass/maps/NavigationManager;->n:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    return-void
.end method

.method public final c()Z
    .locals 2

    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->n:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    sget-object v1, Lcom/google/glass/maps/NavigationManager$GuidanceState;->ON_ROUTE:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->n:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    sget-object v1, Lcom/google/glass/maps/NavigationManager$GuidanceState;->REROUTING:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Z
    .locals 2

    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->n:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    sget-object v1, Lcom/google/glass/maps/NavigationManager$GuidanceState;->ROUTE_COMPLETED:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Z
    .locals 2

    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->n:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    sget-object v1, Lcom/google/glass/maps/NavigationManager$GuidanceState;->GETTING_DIRECTIONS:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()Z
    .locals 2

    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->e:Lcom/google/glass/maps/ca;

    invoke-virtual {v0}, Lcom/google/glass/maps/ca;->a()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()V
    .locals 2

    invoke-static {}, Lcom/google/glass/f/a;->c()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/maps/NavigationManager;->p:J

    invoke-direct {p0}, Lcom/google/glass/maps/NavigationManager;->l()V

    return-void
.end method

.method public final h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/glass/maps/NavigationManager;->q:Z

    return v0
.end method

.method public final i()Lcom/google/android/maps/driveabout/nav/ah;
    .locals 2

    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->d:Lcom/google/glass/navlib/g;

    invoke-interface {v0}, Lcom/google/glass/navlib/g;->d()Lcom/google/android/maps/driveabout/nav/p;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/p;->f()Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/w;->h()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/nav/w;->a(I)Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j()I
    .locals 4

    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->b:Lcom/google/glass/util/o;

    invoke-interface {v0}, Lcom/google/glass/util/o;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/glass/maps/NavigationManager;->o:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public final k()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationManager;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationManager;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->e:Lcom/google/glass/maps/ca;

    invoke-virtual {v0}, Lcom/google/glass/maps/ca;->a()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
