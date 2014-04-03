.class public Lcom/google/glass/voice/menu/VoiceMenu;
.super Landroid/widget/FrameLayout;
.source "VoiceMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/menu/VoiceMenu$VoiceMenuListener;
    }
.end annotation


# static fields
.field private static final FADE_OUT_ALPHA:F = 0.2f

.field public static final HEAD_SCROLL_PER_ITEM:F = 45.0f

.field private static final MENU_ITEM_ANIMATE_IN_DELAY_MILLIS:J = 0x32L

.field private static final MENU_ITEM_ANIMATE_IN_DURATION_MILLIS:J = 0xdcL

.field private static final MENU_ITEM_SELECTION_ANIMATION_DURATION_MILLIS:J = 0x64L

.field private static final MENU_ITEM_SELECTION_DURATION_MILLIS:J = 0x3e8L

.field private static final MSG_ANIMATE_IN:I = 0x1

.field private static final MSG_END_SECONDARY_MENU_ITEM_SELECTION:I = 0x2

.field private static final TAG:Ljava/lang/String;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field private static skipInit:Z


# instance fields
.field private currentItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Lcom/google/glass/voice/menu/VoiceMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private dismissed:Z

.field private final handler:Landroid/os/Handler;

.field private primaryMenu:Landroid/widget/LinearLayout;

.field private final primaryMenuItemViews:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Lcom/google/glass/voice/menu/VoiceMenuItem;",
            "Lcom/google/glass/widget/TypophileTextView;",
            ">;"
        }
    .end annotation
.end field

.field private primaryMenuLayout:Landroid/widget/LinearLayout;

.field private primaryMenuScrollView:Lcom/google/glass/voice/menu/OverscrollView;

.field private primaryMenuSelectedYPosition:F

.field private secondaryMenuItemViews:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Lcom/google/glass/voice/menu/VoiceMenuItem;",
            "Lcom/google/glass/widget/TypophileTextView;",
            ">;"
        }
    .end annotation
.end field

.field private secondaryMenuLayout:Landroid/widget/LinearLayout;

.field private secondaryMenuScrollView:Lcom/google/glass/voice/menu/OverscrollView;

.field private selectedPrimaryMenuItem:Lcom/google/glass/widget/TypophileTextView;

.field private selectedSecondaryMenuItem:Lcom/google/glass/widget/TypophileTextView;

.field private visibleScrollView:Lcom/google/glass/voice/menu/OverscrollView;

.field private voiceMenuListener:Lcom/google/glass/voice/menu/VoiceMenu$VoiceMenuListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/google/glass/voice/menu/VoiceMenu;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/menu/VoiceMenu;->TAG:Ljava/lang/String;

    .line 39
    sget-object v0, Lcom/google/glass/voice/menu/VoiceMenu;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/menu/VoiceMenu;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 131
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/glass/voice/menu/VoiceMenu;->skipInit:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 139
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/voice/menu/VoiceMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 140
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 143
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    new-instance v0, Lcom/google/glass/voice/menu/VoiceMenu$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/glass/voice/menu/VoiceMenu$1;-><init>(Lcom/google/glass/voice/menu/VoiceMenu;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->handler:Landroid/os/Handler;

    .line 112
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->primaryMenuItemViews:Ljava/util/LinkedHashMap;

    .line 145
    sget-boolean v0, Lcom/google/glass/voice/menu/VoiceMenu;->skipInit:Z

    if-eqz v0, :cond_0

    .line 146
    sget-object v0, Lcom/google/glass/voice/menu/VoiceMenu;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Skipping proper initialization for tests"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    :goto_0
    return-void

    .line 150
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/voice/menu/VoiceMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/google/glass/voiceclient/R$layout;->voice_menu:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 152
    invoke-direct {p0}, Lcom/google/glass/voice/menu/VoiceMenu;->initViews()V

    .line 153
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->primaryMenuScrollView:Lcom/google/glass/voice/menu/OverscrollView;

    invoke-direct {p0, v0}, Lcom/google/glass/voice/menu/VoiceMenu;->setVisibleScrollView(Lcom/google/glass/voice/menu/OverscrollView;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/google/glass/voice/menu/VoiceMenu;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/google/glass/voice/menu/VoiceMenu;->animateIn(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/voice/menu/VoiceMenu;)Ljava/util/LinkedHashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->secondaryMenuItemViews:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/glass/voice/menu/VoiceMenu;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/glass/voice/menu/VoiceMenu;->fadeInPrimaryMenuItems()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/glass/voice/menu/VoiceMenu;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/google/glass/voice/menu/VoiceMenu;->showSecondaryMenu(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/glass/voice/menu/VoiceMenu;)Lcom/google/glass/voice/menu/VoiceMenu$VoiceMenuListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->voiceMenuListener:Lcom/google/glass/voice/menu/VoiceMenu$VoiceMenuListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/voice/menu/VoiceMenu;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/voice/menu/VoiceMenu;)Lcom/google/glass/widget/TypophileTextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->selectedSecondaryMenuItem:Lcom/google/glass/widget/TypophileTextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/glass/voice/menu/VoiceMenu;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->dismissed:Z

    return v0
.end method

.method static synthetic access$700(Lcom/google/glass/voice/menu/VoiceMenu;)Lcom/google/glass/widget/TypophileTextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->selectedPrimaryMenuItem:Lcom/google/glass/widget/TypophileTextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/glass/voice/menu/VoiceMenu;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->primaryMenuSelectedYPosition:F

    return v0
.end method

.method static synthetic access$802(Lcom/google/glass/voice/menu/VoiceMenu;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput p1, p0, Lcom/google/glass/voice/menu/VoiceMenu;->primaryMenuSelectedYPosition:F

    return p1
.end method

.method static synthetic access$900(Lcom/google/glass/voice/menu/VoiceMenu;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->primaryMenuLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private addPrimaryMenuItem(Lcom/google/glass/voice/menu/VoiceMenuItem;)V
    .locals 2
    .parameter "voiceMenuItem"

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/google/glass/voice/menu/VoiceMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/glass/voice/menu/VoiceMenuItem;->getLabel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/glass/voice/menu/VoiceMenu;->newMenuItem(Ljava/lang/String;)Lcom/google/glass/widget/TypophileTextView;

    move-result-object v0

    .line 170
    .local v0, menuItem:Lcom/google/glass/widget/TypophileTextView;
    iget-object v1, p0, Lcom/google/glass/voice/menu/VoiceMenu;->primaryMenuItemViews:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object v1, p0, Lcom/google/glass/voice/menu/VoiceMenu;->primaryMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 172
    return-void
.end method

.method private animateIn(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/google/glass/voice/menu/VoiceMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 204
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 205
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

    .line 209
    return-void
.end method

.method private fadeInPrimaryMenuItems()V
    .locals 5

    .prologue
    .line 435
    iget-object v2, p0, Lcom/google/glass/voice/menu/VoiceMenu;->primaryMenuItemViews:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/TypophileTextView;

    .line 437
    .local v1, primaryMenuItemView:Lcom/google/glass/widget/TypophileTextView;
    iget-object v2, p0, Lcom/google/glass/voice/menu/VoiceMenu;->selectedPrimaryMenuItem:Lcom/google/glass/widget/TypophileTextView;

    if-eq v1, v2, :cond_0

    .line 438
    invoke-virtual {v1}, Lcom/google/glass/widget/TypophileTextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v3, 0x3f80

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v3, 0x64

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 444
    .end local v1           #primaryMenuItemView:Lcom/google/glass/widget/TypophileTextView;
    :cond_1
    return-void
.end method

.method private initViews()V
    .locals 1

    .prologue
    .line 187
    sget v0, Lcom/google/glass/voiceclient/R$id;->primary_menu:I

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/menu/VoiceMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->primaryMenu:Landroid/widget/LinearLayout;

    .line 188
    sget v0, Lcom/google/glass/voiceclient/R$id;->voice_menu_selected_primary_menu_item:I

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/menu/VoiceMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/TypophileTextView;

    iput-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->selectedPrimaryMenuItem:Lcom/google/glass/widget/TypophileTextView;

    .line 190
    sget v0, Lcom/google/glass/voiceclient/R$id;->voice_menu_selected_secondary_menu_item:I

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/menu/VoiceMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/TypophileTextView;

    iput-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->selectedSecondaryMenuItem:Lcom/google/glass/widget/TypophileTextView;

    .line 193
    sget v0, Lcom/google/glass/voiceclient/R$id;->voice_menu_primary_scroll_view:I

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/menu/VoiceMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/menu/OverscrollView;

    iput-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->primaryMenuScrollView:Lcom/google/glass/voice/menu/OverscrollView;

    .line 194
    sget v0, Lcom/google/glass/voiceclient/R$id;->voice_menu_items:I

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/menu/VoiceMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->primaryMenuLayout:Landroid/widget/LinearLayout;

    .line 196
    sget v0, Lcom/google/glass/voiceclient/R$id;->voice_menu_secondary_scroll_view:I

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/menu/VoiceMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/menu/OverscrollView;

    iput-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->secondaryMenuScrollView:Lcom/google/glass/voice/menu/OverscrollView;

    .line 197
    sget v0, Lcom/google/glass/voiceclient/R$id;->voice_menu_secondary_menu_layout:I

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/menu/VoiceMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->secondaryMenuLayout:Landroid/widget/LinearLayout;

    .line 198
    return-void
.end method

.method private newMenuItem(Ljava/lang/String;)Lcom/google/glass/widget/TypophileTextView;
    .locals 4
    .parameter "text"

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/google/glass/voice/menu/VoiceMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/google/glass/voiceclient/R$layout;->voice_menu_item:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/TypophileTextView;

    .line 264
    .local v0, view:Lcom/google/glass/widget/TypophileTextView;
    invoke-virtual {v0, p1}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    return-object v0
.end method

.method private populateLayoutWithItems(Landroid/widget/LinearLayout;Ljava/util/Collection;)Ljava/util/LinkedHashMap;
    .locals 5
    .parameter "layout"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/LinearLayout;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/glass/voice/menu/VoiceMenuItem;",
            ">;)",
            "Ljava/util/LinkedHashMap",
            "<",
            "Lcom/google/glass/voice/menu/VoiceMenuItem;",
            "Lcom/google/glass/widget/TypophileTextView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 248
    .local p2, items:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/glass/voice/menu/VoiceMenuItem;>;"
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 249
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 251
    .local v3, menuItems:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Lcom/google/glass/voice/menu/VoiceMenuItem;Lcom/google/glass/widget/TypophileTextView;>;"
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 252
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/voice/menu/VoiceMenuItem;

    .line 253
    .local v1, item:Lcom/google/glass/voice/menu/VoiceMenuItem;
    invoke-virtual {p0}, Lcom/google/glass/voice/menu/VoiceMenu;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/glass/voice/menu/VoiceMenuItem;->getLabel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/glass/voice/menu/VoiceMenu;->newMenuItem(Ljava/lang/String;)Lcom/google/glass/widget/TypophileTextView;

    move-result-object v2

    .line 254
    .local v2, menuItem:Lcom/google/glass/widget/TypophileTextView;
    invoke-virtual {v3, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 257
    .end local v1           #item:Lcom/google/glass/voice/menu/VoiceMenuItem;
    .end local v2           #menuItem:Lcom/google/glass/widget/TypophileTextView;
    :cond_0
    return-object v3
.end method

.method private promoteMenuItem(Lcom/google/glass/widget/TypophileTextView;Lcom/google/glass/voice/menu/OverscrollView;Ljava/lang/Runnable;)V
    .locals 1
    .parameter "menuItem"
    .parameter "menuItemScrollView"
    .parameter "postAnimationRunnable"

    .prologue
    .line 360
    new-instance v0, Lcom/google/glass/voice/menu/VoiceMenu$5;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/glass/voice/menu/VoiceMenu$5;-><init>(Lcom/google/glass/voice/menu/VoiceMenu;Lcom/google/glass/widget/TypophileTextView;Lcom/google/glass/voice/menu/OverscrollView;Ljava/lang/Runnable;)V

    invoke-direct {p0, p1, v0}, Lcom/google/glass/voice/menu/VoiceMenu;->selectPrimaryMenuItem(Lcom/google/glass/widget/TypophileTextView;Ljava/lang/Runnable;)V

    .line 385
    return-void
.end method

.method private selectPrimaryMenuItem(Lcom/google/glass/widget/TypophileTextView;Ljava/lang/Runnable;)V
    .locals 7
    .parameter "menuItem"
    .parameter "postAnimationRunnable"

    .prologue
    .line 456
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Lcom/google/glass/widget/TypophileTextView;->setEnabled(Z)V

    .line 458
    iget-object v4, p0, Lcom/google/glass/voice/menu/VoiceMenu;->primaryMenuItemViews:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-static {v4}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v2

    .line 460
    .local v2, primaryMenuItemViews:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/widget/TypophileTextView;>;"
    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 462
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 463
    if-eqz p2, :cond_0

    .line 464
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 491
    :cond_0
    return-void

    .line 469
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 470
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/glass/widget/TypophileTextView;

    .line 472
    .local v3, t:Lcom/google/glass/widget/TypophileTextView;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v0, v4, :cond_2

    .line 473
    new-instance v1, Lcom/google/glass/voice/menu/VoiceMenu$7;

    invoke-direct {v1, p0, p2, v3}, Lcom/google/glass/voice/menu/VoiceMenu$7;-><init>(Lcom/google/glass/voice/menu/VoiceMenu;Ljava/lang/Runnable;Lcom/google/glass/widget/TypophileTextView;)V

    .line 486
    .local v1, listener:Landroid/animation/Animator$AnimatorListener;
    :goto_1
    invoke-virtual {v3}, Lcom/google/glass/widget/TypophileTextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const v5, 0x3e4ccccd

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const-wide/16 v5, 0x64

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 469
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 483
    .end local v1           #listener:Landroid/animation/Animator$AnimatorListener;
    :cond_2
    const/4 v1, 0x0

    .restart local v1       #listener:Landroid/animation/Animator$AnimatorListener;
    goto :goto_1
.end method

.method private selectSecondaryMenuItem(Lcom/google/glass/widget/TypophileTextView;Ljava/util/LinkedHashMap;)V
    .locals 6
    .parameter "secondaryMenuItem"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/widget/TypophileTextView;",
            "Ljava/util/LinkedHashMap",
            "<",
            "Lcom/google/glass/voice/menu/VoiceMenuItem;",
            "Lcom/google/glass/widget/TypophileTextView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 337
    .local p2, menuItems:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Lcom/google/glass/voice/menu/VoiceMenuItem;Lcom/google/glass/widget/TypophileTextView;>;"
    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/TypophileTextView;

    .line 338
    .local v1, t:Lcom/google/glass/widget/TypophileTextView;
    if-eq v1, p1, :cond_0

    .line 339
    invoke-virtual {v1}, Lcom/google/glass/widget/TypophileTextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const v3, 0x3e4ccccd

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v3, 0x64

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 345
    .end local v1           #t:Lcom/google/glass/widget/TypophileTextView;
    :cond_1
    iget-object v2, p0, Lcom/google/glass/voice/menu/VoiceMenu;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/glass/voice/menu/VoiceMenu;->handler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-static {v3, v4, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 348
    return-void
.end method

.method private setPrimaryMenuLayoutParams(Z)V
    .locals 4
    .parameter "expandMenu"

    .prologue
    const/4 v1, -0x1

    .line 392
    iget-object v2, p0, Lcom/google/glass/voice/menu/VoiceMenu;->primaryMenu:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {v3, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 396
    return-void

    .line 392
    :cond_0
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public static final setSkipInit(Z)V
    .locals 0
    .parameter "skipInit"

    .prologue
    .line 134
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 135
    sput-boolean p0, Lcom/google/glass/voice/menu/VoiceMenu;->skipInit:Z

    .line 136
    return-void
.end method

.method private setVisibleScrollView(Lcom/google/glass/voice/menu/OverscrollView;)V
    .locals 0
    .parameter "scrollView"

    .prologue
    .line 270
    iput-object p1, p0, Lcom/google/glass/voice/menu/VoiceMenu;->visibleScrollView:Lcom/google/glass/voice/menu/OverscrollView;

    .line 271
    return-void
.end method

.method private showSecondaryMenu(Ljava/util/List;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/menu/VoiceMenuItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, menuItems:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/voice/menu/VoiceMenuItem;>;"
    const/4 v4, 0x0

    .line 231
    invoke-direct {p0, v4}, Lcom/google/glass/voice/menu/VoiceMenu;->setPrimaryMenuLayoutParams(Z)V

    .line 232
    iget-object v2, p0, Lcom/google/glass/voice/menu/VoiceMenu;->primaryMenuScrollView:Lcom/google/glass/voice/menu/OverscrollView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/google/glass/voice/menu/OverscrollView;->setVisibility(I)V

    .line 233
    iget-object v2, p0, Lcom/google/glass/voice/menu/VoiceMenu;->secondaryMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 234
    iget-object v2, p0, Lcom/google/glass/voice/menu/VoiceMenu;->secondaryMenuScrollView:Lcom/google/glass/voice/menu/OverscrollView;

    invoke-virtual {v2, v4}, Lcom/google/glass/voice/menu/OverscrollView;->setVisibility(I)V

    .line 236
    iget-object v2, p0, Lcom/google/glass/voice/menu/VoiceMenu;->secondaryMenuItemViews:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/TypophileTextView;

    .line 237
    .local v1, menuItem:Lcom/google/glass/widget/TypophileTextView;
    invoke-direct {p0, v1}, Lcom/google/glass/voice/menu/VoiceMenu;->animateIn(Landroid/view/View;)V

    goto :goto_0

    .line 239
    .end local v1           #menuItem:Lcom/google/glass/widget/TypophileTextView;
    :cond_0
    return-void
.end method

.method private updateEnabledState(Ljava/util/LinkedHashMap;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap",
            "<+",
            "Lcom/google/glass/voice/menu/VoiceMenuItem;",
            "Lcom/google/glass/widget/TypophileTextView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 285
    .local p1, viewsByItem:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<+Lcom/google/glass/voice/menu/VoiceMenuItem;Lcom/google/glass/widget/TypophileTextView;>;"
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/voice/menu/VoiceMenuItem;

    .line 286
    .local v1, item:Lcom/google/glass/voice/menu/VoiceMenuItem;
    invoke-virtual {p1, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/widget/TypophileTextView;

    iget-object v3, p0, Lcom/google/glass/voice/menu/VoiceMenu;->voiceMenuListener:Lcom/google/glass/voice/menu/VoiceMenu$VoiceMenuListener;

    invoke-virtual {v1, v3}, Lcom/google/glass/voice/menu/VoiceMenuItem;->isEnabled(Lcom/google/glass/voice/menu/VoiceMenuEnvironment;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/glass/widget/TypophileTextView;->setEnabled(Z)V

    goto :goto_0

    .line 288
    .end local v1           #item:Lcom/google/glass/voice/menu/VoiceMenuItem;
    :cond_0
    return-void
.end method


# virtual methods
.method public animateBackToPrimaryMenu()V
    .locals 5

    .prologue
    .line 404
    iget-object v2, p0, Lcom/google/glass/voice/menu/VoiceMenu;->primaryMenuItemViews:Ljava/util/LinkedHashMap;

    invoke-direct {p0, v2}, Lcom/google/glass/voice/menu/VoiceMenu;->updateEnabledState(Ljava/util/LinkedHashMap;)V

    .line 405
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/google/glass/voice/menu/VoiceMenu;->setPrimaryMenuLayoutParams(Z)V

    .line 406
    iget-object v2, p0, Lcom/google/glass/voice/menu/VoiceMenu;->primaryMenuScrollView:Lcom/google/glass/voice/menu/OverscrollView;

    invoke-direct {p0, v2}, Lcom/google/glass/voice/menu/VoiceMenu;->setVisibleScrollView(Lcom/google/glass/voice/menu/OverscrollView;)V

    .line 407
    iget-object v2, p0, Lcom/google/glass/voice/menu/VoiceMenu;->primaryMenuScrollView:Lcom/google/glass/voice/menu/OverscrollView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/glass/voice/menu/OverscrollView;->setVisibility(I)V

    .line 408
    iget-object v2, p0, Lcom/google/glass/voice/menu/VoiceMenu;->secondaryMenuScrollView:Lcom/google/glass/voice/menu/OverscrollView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/google/glass/voice/menu/OverscrollView;->setVisibility(I)V

    .line 410
    iget-object v2, p0, Lcom/google/glass/voice/menu/VoiceMenu;->primaryMenuItemViews:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/voice/menu/VoiceMenu;->currentItems:Ljava/util/List;

    .line 411
    iget-object v2, p0, Lcom/google/glass/voice/menu/VoiceMenu;->currentItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/voice/menu/VoiceMenuItem;

    .line 412
    .local v1, item:Lcom/google/glass/voice/menu/VoiceMenuItem;
    invoke-virtual {v1}, Lcom/google/glass/voice/menu/VoiceMenuItem;->reset()V

    goto :goto_0

    .line 415
    .end local v1           #item:Lcom/google/glass/voice/menu/VoiceMenuItem;
    :cond_0
    iget-object v2, p0, Lcom/google/glass/voice/menu/VoiceMenu;->selectedPrimaryMenuItem:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {v2}, Lcom/google/glass/widget/TypophileTextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget v3, p0, Lcom/google/glass/voice/menu/VoiceMenu;->primaryMenuSelectedYPosition:F

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v3, 0xdc

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/google/glass/voice/menu/VoiceMenu$6;

    invoke-direct {v3, p0}, Lcom/google/glass/voice/menu/VoiceMenu$6;-><init>(Lcom/google/glass/voice/menu/VoiceMenu;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 432
    return-void
.end method

.method protected cancelIfDismissed(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 1
    .parameter "postAnimationRunnable"

    .prologue
    .line 321
    new-instance v0, Lcom/google/glass/voice/menu/VoiceMenu$4;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/voice/menu/VoiceMenu$4;-><init>(Lcom/google/glass/voice/menu/VoiceMenu;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public getVisibleScrollView()Lcom/google/glass/voice/menu/OverscrollView;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->visibleScrollView:Lcom/google/glass/voice/menu/OverscrollView;

    return-object v0
.end method

.method public onConnectivityChanged(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 278
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->primaryMenuItemViews:Ljava/util/LinkedHashMap;

    invoke-direct {p0, v0}, Lcom/google/glass/voice/menu/VoiceMenu;->updateEnabledState(Ljava/util/LinkedHashMap;)V

    .line 279
    return-void
.end method

.method public onDismissed()V
    .locals 3

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->dismissed:Z

    if-eqz v0, :cond_0

    .line 158
    sget-object v0, Lcom/google/glass/voice/menu/VoiceMenu;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Dismissed more than once!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->dismissed:Z

    .line 162
    return-void
.end method

.method public onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Lcom/google/glass/voice/VoiceConfig;
    .locals 6
    .parameter "command"

    .prologue
    .line 513
    iget-object v2, p0, Lcom/google/glass/voice/menu/VoiceMenu;->currentItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/voice/menu/VoiceMenuItem;

    .line 514
    .local v1, menuItem:Lcom/google/glass/voice/menu/VoiceMenuItem;
    invoke-virtual {v1, p1}, Lcom/google/glass/voice/menu/VoiceMenuItem;->matches(Lcom/google/glass/voice/VoiceCommand;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 515
    iget-object v2, p0, Lcom/google/glass/voice/menu/VoiceMenu;->voiceMenuListener:Lcom/google/glass/voice/menu/VoiceMenu$VoiceMenuListener;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/google/glass/voice/menu/VoiceMenuItem;->trigger(Lcom/google/glass/voice/menu/VoiceMenuEnvironment;Z)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v2

    .line 521
    .end local v1           #menuItem:Lcom/google/glass/voice/menu/VoiceMenuItem;
    :goto_0
    return-object v2

    .line 519
    :cond_1
    sget-object v2, Lcom/google/glass/voice/menu/VoiceMenu;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "No matching menu item found."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 520
    const/4 v2, 0x5

    sget-object v3, Lcom/google/glass/voice/menu/VoiceMenu;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "command: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; items: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/glass/voice/menu/VoiceMenu;->currentItems:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/google/glass/logging/Log;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 521
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public selectMenuItem(Lcom/google/glass/voice/menu/VoiceMenuItem;Ljava/lang/Runnable;)V
    .locals 2
    .parameter "menuItem"
    .parameter "postAnimationRunnable"

    .prologue
    .line 291
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->primaryMenuItemViews:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/TypophileTextView;

    iget-object v1, p0, Lcom/google/glass/voice/menu/VoiceMenu;->primaryMenuScrollView:Lcom/google/glass/voice/menu/OverscrollView;

    invoke-direct {p0, v0, v1, p2}, Lcom/google/glass/voice/menu/VoiceMenu;->promoteMenuItem(Lcom/google/glass/widget/TypophileTextView;Lcom/google/glass/voice/menu/OverscrollView;Ljava/lang/Runnable;)V

    .line 293
    return-void
.end method

.method public selectMenuItem(Lcom/google/glass/voice/menu/VoiceMenuItem;Ljava/util/List;)V
    .locals 4
    .parameter "menuItem"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/voice/menu/VoiceMenuItem;",
            "Ljava/util/List",
            "<+",
            "Lcom/google/glass/voice/menu/VoiceMenuItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 212
    .local p2, secondaryMenu:Ljava/util/List;,"Ljava/util/List<+Lcom/google/glass/voice/menu/VoiceMenuItem;>;"
    invoke-static {p2}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 213
    .local v0, menuItems:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/voice/menu/VoiceMenuItem;>;"
    iget-object v1, p0, Lcom/google/glass/voice/menu/VoiceMenu;->secondaryMenuLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1, v0}, Lcom/google/glass/voice/menu/VoiceMenu;->populateLayoutWithItems(Landroid/widget/LinearLayout;Ljava/util/Collection;)Ljava/util/LinkedHashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/voice/menu/VoiceMenu;->secondaryMenuItemViews:Ljava/util/LinkedHashMap;

    .line 214
    iput-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->currentItems:Ljava/util/List;

    .line 215
    iget-object v1, p0, Lcom/google/glass/voice/menu/VoiceMenu;->secondaryMenuItemViews:Ljava/util/LinkedHashMap;

    invoke-direct {p0, v1}, Lcom/google/glass/voice/menu/VoiceMenu;->updateEnabledState(Ljava/util/LinkedHashMap;)V

    .line 216
    iget-object v1, p0, Lcom/google/glass/voice/menu/VoiceMenu;->secondaryMenuScrollView:Lcom/google/glass/voice/menu/OverscrollView;

    invoke-direct {p0, v1}, Lcom/google/glass/voice/menu/VoiceMenu;->setVisibleScrollView(Lcom/google/glass/voice/menu/OverscrollView;)V

    .line 218
    iget-object v1, p0, Lcom/google/glass/voice/menu/VoiceMenu;->primaryMenuItemViews:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/TypophileTextView;

    iget-object v2, p0, Lcom/google/glass/voice/menu/VoiceMenu;->primaryMenuScrollView:Lcom/google/glass/voice/menu/OverscrollView;

    new-instance v3, Lcom/google/glass/voice/menu/VoiceMenu$2;

    invoke-direct {v3, p0, v0}, Lcom/google/glass/voice/menu/VoiceMenu$2;-><init>(Lcom/google/glass/voice/menu/VoiceMenu;Ljava/util/List;)V

    invoke-direct {p0, v1, v2, v3}, Lcom/google/glass/voice/menu/VoiceMenu;->promoteMenuItem(Lcom/google/glass/widget/TypophileTextView;Lcom/google/glass/voice/menu/OverscrollView;Ljava/lang/Runnable;)V

    .line 227
    return-void
.end method

.method public selectSecondaryMenuItem(Lcom/google/glass/voice/menu/VoiceMenuItem;JLjava/lang/Runnable;)V
    .locals 5
    .parameter "item"
    .parameter "postAnimationDelayMs"
    .parameter "postAnimationRunnable"

    .prologue
    const/4 v4, 0x0

    .line 297
    iget-object v1, p0, Lcom/google/glass/voice/menu/VoiceMenu;->secondaryMenuItemViews:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/TypophileTextView;

    .line 298
    .local v0, secondaryMenuItem:Lcom/google/glass/widget/TypophileTextView;
    iget-object v1, p0, Lcom/google/glass/voice/menu/VoiceMenu;->secondaryMenuItemViews:Ljava/util/LinkedHashMap;

    invoke-direct {p0, v0, v1}, Lcom/google/glass/voice/menu/VoiceMenu;->selectSecondaryMenuItem(Lcom/google/glass/widget/TypophileTextView;Ljava/util/LinkedHashMap;)V

    .line 299
    iget-object v1, p0, Lcom/google/glass/voice/menu/VoiceMenu;->selectedSecondaryMenuItem:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {v0}, Lcom/google/glass/widget/TypophileTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    iget-object v1, p0, Lcom/google/glass/voice/menu/VoiceMenu;->selectedSecondaryMenuItem:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {v0}, Lcom/google/glass/widget/TypophileTextView;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/google/glass/voice/menu/VoiceMenu;->secondaryMenuScrollView:Lcom/google/glass/voice/menu/OverscrollView;

    invoke-virtual {v3, v4}, Lcom/google/glass/voice/menu/OverscrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/TypophileTextView;->setTranslationY(F)V

    .line 302
    iget-object v1, p0, Lcom/google/glass/voice/menu/VoiceMenu;->selectedSecondaryMenuItem:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {v1, v4}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    .line 303
    iget-object v1, p0, Lcom/google/glass/voice/menu/VoiceMenu;->secondaryMenuScrollView:Lcom/google/glass/voice/menu/OverscrollView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/google/glass/voice/menu/OverscrollView;->setVisibility(I)V

    .line 304
    iget-object v1, p0, Lcom/google/glass/voice/menu/VoiceMenu;->selectedSecondaryMenuItem:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {v1}, Lcom/google/glass/widget/TypophileTextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0xdc

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/google/glass/voice/menu/VoiceMenu$3;

    invoke-direct {v2, p0, p4, p2, p3}, Lcom/google/glass/voice/menu/VoiceMenu$3;-><init>(Lcom/google/glass/voice/menu/VoiceMenu;Ljava/lang/Runnable;J)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 317
    return-void
.end method

.method public setListener(Lcom/google/glass/voice/menu/VoiceMenu$VoiceMenuListener;)V
    .locals 0
    .parameter "voiceMenuListener"

    .prologue
    .line 165
    iput-object p1, p0, Lcom/google/glass/voice/menu/VoiceMenu;->voiceMenuListener:Lcom/google/glass/voice/menu/VoiceMenu$VoiceMenuListener;

    .line 166
    return-void
.end method

.method public setPrimaryMenuItems(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/google/glass/voice/menu/VoiceMenuItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 175
    .local p1, primaryMenuItems:Ljava/util/List;,"Ljava/util/List<+Lcom/google/glass/voice/menu/VoiceMenuItem;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 176
    sget-object v2, Lcom/google/glass/voice/menu/VoiceMenu;->logger:Lcom/google/glass/logging/FormattingLogger;

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    const-string v4, "List of primary menu items should not be empty."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/voice/menu/VoiceMenuItem;

    .line 180
    .local v1, primaryMenuItem:Lcom/google/glass/voice/menu/VoiceMenuItem;
    invoke-direct {p0, v1}, Lcom/google/glass/voice/menu/VoiceMenu;->addPrimaryMenuItem(Lcom/google/glass/voice/menu/VoiceMenuItem;)V

    goto :goto_0

    .line 183
    .end local v1           #primaryMenuItem:Lcom/google/glass/voice/menu/VoiceMenuItem;
    :cond_1
    iput-object p1, p0, Lcom/google/glass/voice/menu/VoiceMenu;->currentItems:Ljava/util/List;

    .line 184
    return-void
.end method

.method public setShouldHighlightSelectedItem(Z)V
    .locals 1
    .parameter "shouldHighlight"

    .prologue
    .line 508
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->secondaryMenuScrollView:Lcom/google/glass/voice/menu/OverscrollView;

    invoke-virtual {v0, p1}, Lcom/google/glass/voice/menu/OverscrollView;->setShouldHighlightSelectedItem(Z)V

    .line 509
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->primaryMenuScrollView:Lcom/google/glass/voice/menu/OverscrollView;

    invoke-virtual {v0, p1}, Lcom/google/glass/voice/menu/OverscrollView;->setShouldHighlightSelectedItem(Z)V

    .line 510
    return-void
.end method

.method public showError(Lcom/google/glass/app/GlassError;)V
    .locals 1
    .parameter "error"

    .prologue
    .line 525
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->voiceMenuListener:Lcom/google/glass/voice/menu/VoiceMenu$VoiceMenuListener;

    if-eqz v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->voiceMenuListener:Lcom/google/glass/voice/menu/VoiceMenu$VoiceMenuListener;

    invoke-interface {v0, p1}, Lcom/google/glass/voice/menu/VoiceMenu$VoiceMenuListener;->onError(Lcom/google/glass/app/GlassError;)V

    .line 528
    :cond_0
    return-void
.end method

.method public showPrimaryMenu()V
    .locals 7

    .prologue
    const/16 v5, 0x8

    .line 494
    iget-object v4, p0, Lcom/google/glass/voice/menu/VoiceMenu;->primaryMenuItemViews:Ljava/util/LinkedHashMap;

    invoke-direct {p0, v4}, Lcom/google/glass/voice/menu/VoiceMenu;->updateEnabledState(Ljava/util/LinkedHashMap;)V

    .line 495
    iget-object v4, p0, Lcom/google/glass/voice/menu/VoiceMenu;->selectedPrimaryMenuItem:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {v4, v5}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    .line 496
    iget-object v4, p0, Lcom/google/glass/voice/menu/VoiceMenu;->secondaryMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 499
    const-wide/16 v0, 0x0

    .line 500
    .local v0, delayMillis:J
    iget-object v4, p0, Lcom/google/glass/voice/menu/VoiceMenu;->primaryMenuItemViews:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/glass/widget/TypophileTextView;

    .line 501
    .local v3, menuItem:Lcom/google/glass/widget/TypophileTextView;
    const-wide/16 v4, 0x32

    add-long/2addr v0, v4

    .line 502
    iget-object v4, p0, Lcom/google/glass/voice/menu/VoiceMenu;->handler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/google/glass/voice/menu/VoiceMenu;->handler:Landroid/os/Handler;

    const/4 v6, 0x1

    invoke-static {v5, v6, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 504
    .end local v3           #menuItem:Lcom/google/glass/widget/TypophileTextView;
    :cond_0
    iget-object v4, p0, Lcom/google/glass/voice/menu/VoiceMenu;->primaryMenuItemViews:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-static {v4}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/google/glass/voice/menu/VoiceMenu;->currentItems:Ljava/util/List;

    .line 505
    return-void
.end method
