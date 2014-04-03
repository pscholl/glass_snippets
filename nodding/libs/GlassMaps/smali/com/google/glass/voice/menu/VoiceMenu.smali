.class public Lcom/google/glass/voice/menu/VoiceMenu;
.super Landroid/widget/FrameLayout;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Lcom/google/glass/logging/i;

.field private static r:Z


# instance fields
.field private final c:Landroid/os/Handler;

.field private d:Landroid/widget/LinearLayout;

.field private e:Lcom/google/glass/voice/menu/OverscrollView;

.field private f:Landroid/widget/LinearLayout;

.field private g:Lcom/google/glass/voice/menu/OverscrollView;

.field private h:Landroid/widget/LinearLayout;

.field private i:Lcom/google/glass/widget/TypophileTextView;

.field private j:Lcom/google/glass/widget/TypophileTextView;

.field private k:Ljava/util/List;

.field private l:F

.field private final m:Ljava/util/LinkedHashMap;

.field private n:Ljava/util/LinkedHashMap;

.field private o:Lcom/google/glass/voice/menu/OverscrollView;

.field private p:Z

.field private q:Lcom/google/glass/voice/menu/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/glass/voice/menu/VoiceMenu;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/menu/VoiceMenu;->a:Ljava/lang/String;

    sget-object v0, Lcom/google/glass/voice/menu/VoiceMenu;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/logging/j;->a(Ljava/lang/String;)Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/menu/VoiceMenu;->b:Lcom/google/glass/logging/i;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/glass/voice/menu/VoiceMenu;->r:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/voice/menu/VoiceMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/google/glass/voice/menu/g;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/glass/voice/menu/g;-><init>(Lcom/google/glass/voice/menu/VoiceMenu;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->c:Landroid/os/Handler;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->m:Ljava/util/LinkedHashMap;

    sget-boolean v0, Lcom/google/glass/voice/menu/VoiceMenu;->r:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/glass/voice/menu/VoiceMenu;->b:Lcom/google/glass/logging/i;

    const-string v1, "Skipping proper initialization for tests"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/voice/menu/VoiceMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/google/glass/g/e;->voice_menu:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-direct {p0}, Lcom/google/glass/voice/menu/VoiceMenu;->e()V

    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->e:Lcom/google/glass/voice/menu/OverscrollView;

    invoke-direct {p0, v0}, Lcom/google/glass/voice/menu/VoiceMenu;->a(Lcom/google/glass/voice/menu/OverscrollView;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/glass/voice/menu/VoiceMenu;F)F
    .locals 0

    iput p1, p0, Lcom/google/glass/voice/menu/VoiceMenu;->l:F

    return p1
.end method

.method private a(Ljava/lang/String;)Lcom/google/glass/widget/TypophileTextView;
    .locals 3

    invoke-virtual {p0}, Lcom/google/glass/voice/menu/VoiceMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/google/glass/g/e;->voice_menu_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {v0, p1}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method static synthetic a(Lcom/google/glass/voice/menu/VoiceMenu;)Ljava/util/LinkedHashMap;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->n:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/glass/voice/menu/VoiceMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xdc

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private a(Lcom/google/glass/voice/menu/OverscrollView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/voice/menu/VoiceMenu;->o:Lcom/google/glass/voice/menu/OverscrollView;

    return-void
.end method

.method static synthetic a(Lcom/google/glass/voice/menu/VoiceMenu;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/glass/voice/menu/VoiceMenu;->a(Landroid/view/View;)V

    return-void
.end method

.method private a(Lcom/google/glass/voice/menu/n;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/glass/voice/menu/VoiceMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/glass/voice/menu/n;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/voice/menu/VoiceMenu;->a(Ljava/lang/String;)Lcom/google/glass/widget/TypophileTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/menu/VoiceMenu;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/glass/voice/menu/VoiceMenu;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private a(Lcom/google/glass/widget/TypophileTextView;Lcom/google/glass/voice/menu/OverscrollView;Ljava/lang/Runnable;)V
    .locals 1

    new-instance v0, Lcom/google/glass/voice/menu/i;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/glass/voice/menu/i;-><init>(Lcom/google/glass/voice/menu/VoiceMenu;Lcom/google/glass/widget/TypophileTextView;Lcom/google/glass/voice/menu/OverscrollView;Ljava/lang/Runnable;)V

    invoke-direct {p0, p1, v0}, Lcom/google/glass/voice/menu/VoiceMenu;->a(Lcom/google/glass/widget/TypophileTextView;Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Lcom/google/glass/widget/TypophileTextView;Ljava/lang/Runnable;)V
    .locals 6

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/glass/widget/TypophileTextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/TypophileTextView;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_2

    new-instance v2, Lcom/google/glass/voice/menu/l;

    invoke-direct {v2, p0, p2, v0}, Lcom/google/glass/voice/menu/l;-><init>(Lcom/google/glass/voice/menu/VoiceMenu;Ljava/lang/Runnable;Lcom/google/glass/widget/TypophileTextView;)V

    :goto_1
    invoke-virtual {v0}, Lcom/google/glass/widget/TypophileTextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v4, 0x3e4ccccd

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v4, 0x64

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private a(Ljava/util/LinkedHashMap;)V
    .locals 4

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/menu/n;

    invoke-virtual {p1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/TypophileTextView;

    iget-object v3, p0, Lcom/google/glass/voice/menu/VoiceMenu;->q:Lcom/google/glass/voice/menu/m;

    invoke-virtual {v0, v3}, Lcom/google/glass/voice/menu/n;->a(Lcom/google/glass/voice/menu/VoiceMenuEnvironment;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/glass/widget/TypophileTextView;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private b(Z)V
    .locals 4

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/google/glass/voice/menu/VoiceMenu;->d:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {v3, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    const/4 v0, -0x2

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/glass/voice/menu/VoiceMenu;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->p:Z

    return v0
.end method

.method static synthetic c(Lcom/google/glass/voice/menu/VoiceMenu;)Lcom/google/glass/widget/TypophileTextView;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->i:Lcom/google/glass/widget/TypophileTextView;

    return-object v0
.end method

.method static synthetic d(Lcom/google/glass/voice/menu/VoiceMenu;)F
    .locals 1

    iget v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->l:F

    return v0
.end method

.method static synthetic e(Lcom/google/glass/voice/menu/VoiceMenu;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->f:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private e()V
    .locals 1

    sget v0, Lcom/google/glass/g/d;->primary_menu:I

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/menu/VoiceMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->d:Landroid/widget/LinearLayout;

    sget v0, Lcom/google/glass/g/d;->voice_menu_selected_primary_menu_item:I

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/menu/VoiceMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/TypophileTextView;

    iput-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->i:Lcom/google/glass/widget/TypophileTextView;

    sget v0, Lcom/google/glass/g/d;->voice_menu_selected_secondary_menu_item:I

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/menu/VoiceMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/TypophileTextView;

    iput-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->j:Lcom/google/glass/widget/TypophileTextView;

    sget v0, Lcom/google/glass/g/d;->voice_menu_primary_scroll_view:I

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/menu/VoiceMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/menu/OverscrollView;

    iput-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->e:Lcom/google/glass/voice/menu/OverscrollView;

    sget v0, Lcom/google/glass/g/d;->voice_menu_items:I

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/menu/VoiceMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->f:Landroid/widget/LinearLayout;

    sget v0, Lcom/google/glass/g/d;->voice_menu_secondary_scroll_view:I

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/menu/VoiceMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/menu/OverscrollView;

    iput-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->g:Lcom/google/glass/voice/menu/OverscrollView;

    sget v0, Lcom/google/glass/g/d;->voice_menu_secondary_menu_layout:I

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/menu/VoiceMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->h:Landroid/widget/LinearLayout;

    return-void
.end method

.method private f()V
    .locals 4

    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/TypophileTextView;

    iget-object v2, p0, Lcom/google/glass/voice/menu/VoiceMenu;->i:Lcom/google/glass/widget/TypophileTextView;

    if-eq v0, v2, :cond_0

    invoke-virtual {v0}, Lcom/google/glass/widget/TypophileTextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v2, 0x3f80

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic f(Lcom/google/glass/voice/menu/VoiceMenu;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/glass/voice/menu/VoiceMenu;->f()V

    return-void
.end method

.method public static final setSkipInit(Z)V
    .locals 0

    invoke-static {}, Lcom/google/glass/f/a;->b()V

    sput-boolean p0, Lcom/google/glass/voice/menu/VoiceMenu;->r:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/glass/voice/VoiceCommand;)Lcom/google/glass/voice/VoiceConfig;
    .locals 4

    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/menu/n;

    invoke-virtual {v0, p1}, Lcom/google/glass/voice/menu/n;->a(Lcom/google/glass/voice/VoiceCommand;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/google/glass/voice/menu/VoiceMenu;->q:Lcom/google/glass/voice/menu/m;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/voice/menu/n;->b(Lcom/google/glass/voice/menu/VoiceMenuEnvironment;Z)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/google/glass/voice/menu/VoiceMenu;->b:Lcom/google/glass/logging/i;

    const-string v1, "No matching menu item found."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x5

    sget-object v1, Lcom/google/glass/voice/menu/VoiceMenu;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; items: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/voice/menu/VoiceMenu;->k:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/glass/logging/o;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final a(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/google/glass/voice/menu/h;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/voice/menu/h;-><init>(Lcom/google/glass/voice/menu/VoiceMenu;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public final a()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->p:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/glass/voice/menu/VoiceMenu;->b:Lcom/google/glass/logging/i;

    const-string v1, "Dismissed more than once!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->p:Z

    return-void
.end method

.method public final a(Lcom/google/glass/voice/menu/n;Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/TypophileTextView;

    iget-object v1, p0, Lcom/google/glass/voice/menu/VoiceMenu;->e:Lcom/google/glass/voice/menu/OverscrollView;

    invoke-direct {p0, v0, v1, p2}, Lcom/google/glass/voice/menu/VoiceMenu;->a(Lcom/google/glass/widget/TypophileTextView;Lcom/google/glass/voice/menu/OverscrollView;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->m:Ljava/util/LinkedHashMap;

    invoke-direct {p0, v0}, Lcom/google/glass/voice/menu/VoiceMenu;->a(Ljava/util/LinkedHashMap;)V

    return-void
.end method

.method public final b()Lcom/google/glass/voice/menu/OverscrollView;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->o:Lcom/google/glass/voice/menu/OverscrollView;

    return-object v0
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->m:Ljava/util/LinkedHashMap;

    invoke-direct {p0, v0}, Lcom/google/glass/voice/menu/VoiceMenu;->a(Ljava/util/LinkedHashMap;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/glass/voice/menu/VoiceMenu;->b(Z)V

    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->e:Lcom/google/glass/voice/menu/OverscrollView;

    invoke-direct {p0, v0}, Lcom/google/glass/voice/menu/VoiceMenu;->a(Lcom/google/glass/voice/menu/OverscrollView;)V

    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->e:Lcom/google/glass/voice/menu/OverscrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/menu/OverscrollView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->g:Lcom/google/glass/voice/menu/OverscrollView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/menu/OverscrollView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->k:Ljava/util/List;

    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/menu/n;

    invoke-virtual {v0}, Lcom/google/glass/voice/menu/n;->b()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->i:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {v0}, Lcom/google/glass/widget/TypophileTextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/google/glass/voice/menu/VoiceMenu;->l:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xdc

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/google/glass/voice/menu/k;

    invoke-direct {v1, p0}, Lcom/google/glass/voice/menu/k;-><init>(Lcom/google/glass/voice/menu/VoiceMenu;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public final d()V
    .locals 7

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->m:Ljava/util/LinkedHashMap;

    invoke-direct {p0, v0}, Lcom/google/glass/voice/menu/VoiceMenu;->a(Ljava/util/LinkedHashMap;)V

    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->i:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/google/glass/voice/menu/VoiceMenu;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-wide v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/TypophileTextView;

    const-wide/16 v4, 0x32

    add-long/2addr v1, v4

    iget-object v4, p0, Lcom/google/glass/voice/menu/VoiceMenu;->c:Landroid/os/Handler;

    iget-object v5, p0, Lcom/google/glass/voice/menu/VoiceMenu;->c:Landroid/os/Handler;

    const/4 v6, 0x1

    invoke-static {v5, v6, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v4, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->k:Ljava/util/List;

    return-void
.end method

.method public setListener(Lcom/google/glass/voice/menu/m;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/voice/menu/VoiceMenu;->q:Lcom/google/glass/voice/menu/m;

    return-void
.end method

.method public setPrimaryMenuItems(Ljava/util/List;)V
    .locals 4

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/glass/voice/menu/VoiceMenu;->b:Lcom/google/glass/logging/i;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "List of primary menu items should not be empty."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/glass/logging/i;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/menu/n;

    invoke-direct {p0, v0}, Lcom/google/glass/voice/menu/VoiceMenu;->a(Lcom/google/glass/voice/menu/n;)V

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lcom/google/glass/voice/menu/VoiceMenu;->k:Ljava/util/List;

    return-void
.end method

.method public setShouldHighlightSelectedItem(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->g:Lcom/google/glass/voice/menu/OverscrollView;

    invoke-virtual {v0, p1}, Lcom/google/glass/voice/menu/OverscrollView;->setShouldHighlightSelectedItem(Z)V

    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->e:Lcom/google/glass/voice/menu/OverscrollView;

    invoke-virtual {v0, p1}, Lcom/google/glass/voice/menu/OverscrollView;->setShouldHighlightSelectedItem(Z)V

    return-void
.end method
