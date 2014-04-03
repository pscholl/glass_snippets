.class public Lcom/google/glass/maps/NavigationActivity;
.super Lcom/google/glass/maps/BaseActivity;

# interfaces
.implements Lcom/google/glass/maps/bf;


# static fields
.field private static final l:Lcom/google/glass/logging/i;


# instance fields
.field private final A:Ljava/lang/Runnable;

.field d:Lcom/google/glass/maps/NavigationManager;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field e:Lcom/google/glass/maps/g;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field f:Lcom/google/android/maps/driveabout/location/t;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field g:Lcom/google/glass/maps/ba;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field h:Lcom/google/glass/maps/ay;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field i:Lcom/google/glass/util/aq;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field j:Lcom/google/glass/maps/ao;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field public k:Lcom/google/glass/maps/directions/TransitMapView;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private m:Lcom/google/glass/util/bj;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/ImageView;

.field private q:Landroid/view/View;

.field private r:Lcom/google/glass/widget/n;

.field private s:Lcom/google/glass/widget/TypophileTextView;

.field private t:Landroid/widget/ImageView;

.field private u:Landroid/opengl/GLSurfaceView;

.field private v:Landroid/view/View;

.field private w:Lcom/google/glass/maps/bx;

.field private x:Lcom/google/glass/maps/directions/i;

.field private y:Z

.field private z:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/glass/logging/j;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/maps/NavigationActivity;->l:Lcom/google/glass/logging/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/glass/maps/BaseActivity;-><init>()V

    new-instance v0, Lcom/google/glass/maps/aa;

    invoke-direct {v0, p0}, Lcom/google/glass/maps/aa;-><init>(Lcom/google/glass/maps/NavigationActivity;)V

    iput-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->A:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic F()Lcom/google/glass/logging/i;
    .locals 1

    sget-object v0, Lcom/google/glass/maps/NavigationActivity;->l:Lcom/google/glass/logging/i;

    return-object v0
.end method

.method private G()V
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/maps/NavigationActivity;->y:Z

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->i:Lcom/google/glass/util/aq;

    iget-object v1, p0, Lcom/google/glass/maps/NavigationActivity;->A:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/glass/util/aq;->b(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->d:Lcom/google/glass/maps/NavigationManager;

    invoke-virtual {v0, p0}, Lcom/google/glass/maps/NavigationManager;->a(Lcom/google/glass/maps/bf;)V

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->f:Lcom/google/android/maps/driveabout/location/t;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/location/t;->f()V

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->u:Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->u:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onResume()V

    invoke-direct {p0}, Lcom/google/glass/maps/NavigationActivity;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationActivity;->E()V

    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->j:Lcom/google/glass/maps/ao;

    invoke-virtual {v0}, Lcom/google/glass/maps/ao;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->e:Lcom/google/glass/maps/g;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->e:Lcom/google/glass/maps/g;

    invoke-virtual {v0}, Lcom/google/glass/maps/g;->d()V

    :cond_1
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->k:Lcom/google/glass/maps/directions/TransitMapView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->k:Lcom/google/glass/maps/directions/TransitMapView;

    invoke-virtual {v0}, Lcom/google/glass/maps/directions/TransitMapView;->a()V

    :cond_2
    return-void
.end method

.method private H()Z
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->d:Lcom/google/glass/maps/NavigationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->d:Lcom/google/glass/maps/NavigationManager;

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationManager;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private I()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationActivity;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/glass/maps/NavigationActivity;->y:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/glass/maps/NavigationActivity;->l:Lcom/google/glass/logging/i;

    const-string v1, "Clearing UI"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->d:Lcom/google/glass/maps/NavigationManager;

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationManager;->a()V

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->m:Lcom/google/glass/util/bj;

    invoke-virtual {v0}, Lcom/google/glass/util/bj;->c()V

    :cond_0
    return-void
.end method

.method private J()V
    .locals 7

    const/4 v1, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Lcom/google/glass/maps/ap;

    invoke-direct {v0, p0}, Lcom/google/glass/maps/ap;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/google/glass/maps/NavigationActivity;->j:Lcom/google/glass/maps/ao;

    invoke-virtual {v2}, Lcom/google/glass/maps/ao;->i()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/glass/maps/NavigationActivity;->e:Lcom/google/glass/maps/g;

    invoke-virtual {v2}, Lcom/google/glass/maps/g;->j()Z

    move-result v2

    if-nez v2, :cond_2

    move v4, v5

    move-object v2, v1

    move v1, v5

    :goto_0
    iget-object v3, p0, Lcom/google/glass/maps/NavigationActivity;->e:Lcom/google/glass/maps/g;

    invoke-virtual {v3}, Lcom/google/glass/maps/g;->h()Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/google/glass/maps/NavigationActivity;->d:Lcom/google/glass/maps/NavigationManager;

    invoke-virtual {v3}, Lcom/google/glass/maps/NavigationManager;->d()Z

    move-result v3

    if-nez v3, :cond_8

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/maps/NavigationActivity;->j:Lcom/google/glass/maps/ao;

    invoke-virtual {v1}, Lcom/google/glass/maps/ao;->h()Lcom/google/android/maps/driveabout/nav/ao;

    move-result-object v1

    invoke-static {p0}, Lcom/google/glass/maps/c/p;->a(Landroid/content/Context;)I

    move-result v3

    invoke-virtual/range {v0 .. v5}, Lcom/google/glass/maps/ap;->a(Lcom/google/android/maps/driveabout/nav/ao;Lcom/google/android/maps/driveabout/e/ab;IZZ)V

    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->m:Lcom/google/glass/util/bj;

    invoke-virtual {v0}, Lcom/google/glass/util/bj;->a()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v2, p0, Lcom/google/glass/maps/NavigationActivity;->e:Lcom/google/glass/maps/g;

    invoke-virtual {v2}, Lcom/google/glass/maps/g;->g()Lcom/google/glass/maps/directions/b;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-boolean v3, v2, Lcom/google/glass/maps/directions/b;->u:Z

    if-eqz v3, :cond_3

    iget-object v1, p0, Lcom/google/glass/maps/NavigationActivity;->e:Lcom/google/glass/maps/g;

    invoke-virtual {v1, v2}, Lcom/google/glass/maps/g;->a(Lcom/google/glass/maps/directions/b;)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v1

    :cond_3
    iget-object v2, p0, Lcom/google/glass/maps/NavigationActivity;->e:Lcom/google/glass/maps/g;

    invoke-virtual {v2}, Lcom/google/glass/maps/g;->l()Z

    move-result v4

    move-object v2, v1

    move v1, v6

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/google/glass/maps/NavigationActivity;->d:Lcom/google/glass/maps/NavigationManager;

    invoke-virtual {v2}, Lcom/google/glass/maps/NavigationManager;->k()Z

    move-result v2

    if-nez v2, :cond_5

    move v4, v5

    move-object v2, v1

    move v1, v5

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/google/glass/maps/NavigationActivity;->d:Lcom/google/glass/maps/NavigationManager;

    invoke-virtual {v2}, Lcom/google/glass/maps/NavigationManager;->i()Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/nav/ah;->l()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    :goto_2
    iget-object v2, p0, Lcom/google/glass/maps/NavigationActivity;->d:Lcom/google/glass/maps/NavigationManager;

    invoke-virtual {v2}, Lcom/google/glass/maps/NavigationManager;->d()Z

    move-result v4

    move-object v2, v1

    move v1, v6

    goto :goto_0

    :cond_7
    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/nav/ah;->a()Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v1

    goto :goto_2

    :cond_8
    iget-object v3, p0, Lcom/google/glass/maps/NavigationActivity;->m:Lcom/google/glass/util/bj;

    invoke-virtual {v3}, Lcom/google/glass/util/bj;->d()V

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/glass/maps/NavigationActivity;->j:Lcom/google/glass/maps/ao;

    invoke-virtual {v1}, Lcom/google/glass/maps/ao;->h()Lcom/google/android/maps/driveabout/nav/ao;

    move-result-object v1

    invoke-static {p0}, Lcom/google/glass/maps/c/p;->a(Landroid/content/Context;)I

    move-result v3

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/google/glass/maps/ap;->a(Lcom/google/android/maps/driveabout/nav/ao;Lcom/google/android/maps/driveabout/e/ab;IZZ)V

    goto :goto_1
.end method

.method private K()V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->i:Lcom/google/glass/util/aq;

    new-instance v1, Lcom/google/glass/maps/ah;

    invoke-direct {v1, p0}, Lcom/google/glass/maps/ah;-><init>(Lcom/google/glass/maps/NavigationActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/util/aq;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private L()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->r:Lcom/google/glass/widget/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->r:Lcom/google/glass/widget/n;

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/n;->a(Lcom/google/glass/widget/q;)V

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->r:Lcom/google/glass/widget/n;

    invoke-virtual {v0}, Lcom/google/glass/widget/n;->cancel()V

    iput-object v1, p0, Lcom/google/glass/maps/NavigationActivity;->r:Lcom/google/glass/widget/n;

    :cond_0
    return-void
.end method

.method private M()V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->t:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/glass/maps/NavigationActivity;->s:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/maps/NavigationActivity;->b(Landroid/widget/ImageView;Lcom/google/glass/widget/TypophileTextView;)V

    return-void
.end method

.method private N()V
    .locals 3

    invoke-static {}, Lcom/google/glass/f/a;->c()V

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->u:Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget v0, Lcom/google/glass/maps/bm;->map:I

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/NavigationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/opengl/GLSurfaceView;

    iput-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->u:Landroid/opengl/GLSurfaceView;

    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/glass/maps/bk;->glass_screen_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/glass/maps/bk;->glass_screen_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    new-instance v2, Lcom/google/glass/maps/ba;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/glass/maps/ba;-><init>(Landroid/content/Context;II)V

    iput-object v2, p0, Lcom/google/glass/maps/NavigationActivity;->g:Lcom/google/glass/maps/ba;

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->u:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->u:Landroid/opengl/GLSurfaceView;

    iget-object v1, p0, Lcom/google/glass/maps/NavigationActivity;->g:Lcom/google/glass/maps/ba;

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->u:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/google/glass/maps/NavigationActivity;->y:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->u:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onResume()V

    :cond_1
    sget v0, Lcom/google/glass/maps/bm;->spotlight_mask_stub:I

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/NavigationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->v:Landroid/view/View;

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/glass/maps/NavigationActivity;)Lcom/google/glass/maps/directions/i;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->x:Lcom/google/glass/maps/directions/i;

    return-object v0
.end method

.method static synthetic a(Lcom/google/glass/maps/NavigationActivity;Lcom/google/glass/widget/n;)Lcom/google/glass/widget/n;
    .locals 0

    iput-object p1, p0, Lcom/google/glass/maps/NavigationActivity;->r:Lcom/google/glass/widget/n;

    return-object p1
.end method

.method private a(Landroid/content/Intent;)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {p0, p1}, Lcom/google/glass/maps/DisclaimerActivity;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/glass/maps/NavigationActivity;->l:Lcom/google/glass/logging/i;

    const-string v1, "Started DisclaimerActivity"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0, p1}, Lcom/google/glass/maps/CnsMyGlassWaitingActivity;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/glass/maps/NavigationActivity;->l:Lcom/google/glass/logging/i;

    const-string v1, "Start MyGlass screen ..."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationActivity;->finish()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationActivity;->y()V

    const-string v0, "voice_search_result"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-direct {p0, v0}, Lcom/google/glass/maps/NavigationActivity;->a(Ljava/lang/String;)V

    :cond_3
    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/google/glass/maps/NavigationActivity;->b(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/glass/maps/NavigationActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/glass/maps/NavigationActivity;->d(Z)V

    return-void
.end method

.method static synthetic a(Lcom/google/glass/maps/NavigationActivity;[Lcom/google/android/maps/driveabout/nav/ao;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/glass/maps/NavigationActivity;->b([Lcom/google/android/maps/driveabout/nav/ao;)V

    return-void
.end method

.method static synthetic a(Lcom/google/glass/maps/NavigationActivity;[Lcom/google/glass/maps/directions/i;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/glass/maps/NavigationActivity;->b([Lcom/google/glass/maps/directions/i;)V

    return-void
.end method

.method private a(Lcom/google/glass/util/aq;)V
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/google/glass/maps/NavigationActivity;->i:Lcom/google/glass/util/aq;

    invoke-static {p0}, Lcom/google/glass/maps/ao;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/glass/maps/ao;->c()Lcom/google/glass/maps/ao;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->j:Lcom/google/glass/maps/ao;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->z:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->j:Lcom/google/glass/maps/ao;

    invoke-virtual {v0}, Lcom/google/glass/maps/ao;->e()Lcom/google/glass/maps/g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->e:Lcom/google/glass/maps/g;

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->j:Lcom/google/glass/maps/ao;

    invoke-virtual {v0}, Lcom/google/glass/maps/ao;->d()Lcom/google/glass/maps/NavigationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->d:Lcom/google/glass/maps/NavigationManager;

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->j:Lcom/google/glass/maps/ao;

    invoke-virtual {v0}, Lcom/google/glass/maps/ao;->f()Lcom/google/android/maps/driveabout/location/t;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->f:Lcom/google/android/maps/driveabout/location/t;

    new-instance v0, Lcom/google/glass/util/bj;

    invoke-direct {v0, p0}, Lcom/google/glass/util/bj;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->m:Lcom/google/glass/util/bj;

    sget v0, Lcom/google/glass/maps/bm;->frame:I

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/NavigationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/NavigationActivity;->a(Landroid/widget/FrameLayout;)V

    new-instance v1, Lcom/google/glass/maps/ay;

    invoke-direct {v1, v0}, Lcom/google/glass/maps/ay;-><init>(Landroid/view/ViewGroup;)V

    iput-object v1, p0, Lcom/google/glass/maps/NavigationActivity;->h:Lcom/google/glass/maps/ay;

    sget v0, Lcom/google/glass/maps/bm;->status:I

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/NavigationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->n:Landroid/widget/TextView;

    sget v0, Lcom/google/glass/maps/bm;->destination:I

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/NavigationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->o:Landroid/widget/TextView;

    sget v0, Lcom/google/glass/maps/bm;->travel_mode_icon:I

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/NavigationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->p:Landroid/widget/ImageView;

    sget v0, Lcom/google/glass/maps/bm;->no_gps_icon:I

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/NavigationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->q:Landroid/view/View;

    sget v0, Lcom/google/glass/maps/bm;->guard_phrase_hint:I

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/NavigationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/TypophileTextView;

    iput-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->s:Lcom/google/glass/widget/TypophileTextView;

    sget v0, Lcom/google/glass/maps/bm;->gradient:I

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/NavigationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->t:Landroid/widget/ImageView;

    new-instance v0, Lcom/google/glass/maps/bx;

    invoke-direct {v0, p0}, Lcom/google/glass/maps/bx;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->w:Lcom/google/glass/maps/bx;

    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/maps/NavigationActivity;->a(Landroid/content/Intent;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->h:Lcom/google/glass/maps/ay;

    sget v1, Lcom/google/glass/maps/bm;->voice_result_pane:I

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/ay;->b(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/google/glass/maps/bm;->result_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static b(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    sget v0, Lcom/google/glass/maps/bl;->travel_mode_drive:I

    :goto_0
    return v0

    :pswitch_0
    sget v0, Lcom/google/glass/maps/bl;->travel_mode_walk:I

    goto :goto_0

    :pswitch_1
    sget v0, Lcom/google/glass/maps/bl;->travel_mode_bike:I

    goto :goto_0

    :pswitch_2
    sget v0, Lcom/google/glass/maps/bl;->travel_mode_transit:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private b(Landroid/content/Intent;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    :goto_0
    const-class v1, Lcom/google/glass/maps/NavigationService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/NavigationActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/glass/maps/NavigationActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/glass/maps/NavigationActivity;->L()V

    return-void
.end method

.method private b([Lcom/google/android/maps/driveabout/nav/ao;)V
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->h:Lcom/google/glass/maps/ay;

    sget v2, Lcom/google/glass/maps/bm;->destinations_pane:I

    invoke-virtual {v0, v2}, Lcom/google/glass/maps/ay;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/DestinationCardsView;

    array-length v2, p1

    if-ne v2, v1, :cond_0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/glass/maps/DestinationCardsView;->setIsNavigating(Z)V

    invoke-virtual {v0, p1}, Lcom/google/glass/maps/DestinationCardsView;->setDestinations([Lcom/google/android/maps/driveabout/nav/ao;)V

    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationActivity;->l()Lcom/google/glass/sound/SoundManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/DestinationCardsView;->setSoundManager(Lcom/google/glass/sound/SoundManager;)V

    new-instance v1, Lcom/google/glass/maps/an;

    invoke-direct {v1, p0}, Lcom/google/glass/maps/an;-><init>(Lcom/google/glass/maps/NavigationActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/DestinationCardsView;->setOnCardSelectedListener(Lcom/google/glass/maps/d;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private b([Lcom/google/glass/maps/directions/i;)V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->h:Lcom/google/glass/maps/ay;

    sget v1, Lcom/google/glass/maps/bm;->trips_pane:I

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/ay;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/TripCardsView;

    invoke-virtual {v0, p1}, Lcom/google/glass/maps/TripCardsView;->setTrips([Lcom/google/glass/maps/directions/i;)V

    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationActivity;->l()Lcom/google/glass/sound/SoundManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/TripCardsView;->setSoundManager(Lcom/google/glass/sound/SoundManager;)V

    new-instance v1, Lcom/google/glass/maps/al;

    invoke-direct {v1, p0}, Lcom/google/glass/maps/al;-><init>(Lcom/google/glass/maps/NavigationActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/TripCardsView;->setOnCardSelectedListener(Lcom/google/glass/maps/d;)V

    return-void
.end method

.method private static c(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    sget v0, Lcom/google/glass/maps/bl;->ic_menu_drive:I

    :goto_0
    return v0

    :pswitch_0
    sget v0, Lcom/google/glass/maps/bl;->ic_menu_walk:I

    goto :goto_0

    :pswitch_1
    sget v0, Lcom/google/glass/maps/bl;->ic_bike_medium:I

    goto :goto_0

    :pswitch_2
    sget v0, Lcom/google/glass/maps/bl;->ic_menu_transit:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic c(Lcom/google/glass/maps/NavigationActivity;)Lcom/google/glass/widget/n;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->r:Lcom/google/glass/widget/n;

    return-object v0
.end method

.method private d(Z)V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/maps/driveabout/nav/ao;

    iget-object v2, p0, Lcom/google/glass/maps/NavigationActivity;->j:Lcom/google/glass/maps/ao;

    invoke-virtual {v2}, Lcom/google/glass/maps/ao;->h()Lcom/google/android/maps/driveabout/nav/ao;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p0}, Lcom/google/glass/maps/c/p;->a(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/google/android/maps/driveabout/b/q;->a([Lcom/google/android/maps/driveabout/nav/ao;I[Lcom/google/android/maps/driveabout/nav/b;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-class v1, Lcom/google/glass/maps/NavigationService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "extra_show_confirmation"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "extra_log_start_event"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/google/glass/maps/NavigationActivity;->b(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 3

    sget-object v0, Lcom/google/glass/maps/NavigationActivity;->l:Lcom/google/glass/logging/i;

    const-string v1, "User stopped navigation or reached destination."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/glass/maps/NavigationActivity;->J()V

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->j:Lcom/google/glass/maps/ao;

    invoke-virtual {v0}, Lcom/google/glass/maps/ao;->g()V

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->e:Lcom/google/glass/maps/g;

    invoke-virtual {v0}, Lcom/google/glass/maps/g;->a()V

    invoke-static {p0}, Lcom/google/glass/maps/NavigationService;->a(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationActivity;->h()V

    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationActivity;->finish()V

    return-void
.end method

.method public final B()V
    .locals 2

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/NavigationActivity;->a(I)V

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->h:Lcom/google/glass/maps/ay;

    sget v1, Lcom/google/glass/maps/bm;->route_overview_pane:I

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/ay;->b(I)Landroid/view/View;

    return-void
.end method

.method public final C()V
    .locals 1

    invoke-direct {p0}, Lcom/google/glass/maps/NavigationActivity;->N()V

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->g:Lcom/google/glass/maps/ba;

    invoke-virtual {v0}, Lcom/google/glass/maps/ba;->a()V

    return-void
.end method

.method public final D()V
    .locals 1

    sget-object v0, Lcom/google/glass/input/InputListener$DismissAction;->OPTION_ITEM:Lcom/google/glass/input/InputListener$DismissAction;

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/NavigationActivity;->a(Lcom/google/glass/input/InputListener$DismissAction;)Z

    return-void
.end method

.method public final E()V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->t:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/glass/maps/NavigationActivity;->s:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/maps/NavigationActivity;->a(Landroid/widget/ImageView;Lcom/google/glass/widget/TypophileTextView;)V

    return-void
.end method

.method public final a(Lcom/google/glass/voice/VoiceCommand;)Lcom/google/glass/voice/VoiceConfig;
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    sget-object v0, Lcom/google/glass/voice/VoiceCommand;->c:Lcom/google/glass/voice/VoiceCommand;

    invoke-virtual {v0, p1}, Lcom/google/glass/voice/VoiceCommand;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/glass/maps/NavigationActivity;->l:Lcom/google/glass/logging/i;

    const-string v1, "Unknown voice command: %s"

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p1, v2, v6

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationActivity;->onUserInteraction()V

    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationActivity;->l()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->VOICE_PENDING:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->a(Lcom/google/glass/sound/SoundManager$SoundId;)I

    sget-object v0, Lcom/google/glass/userevent/UserEventAction;->VOICE_MENU_COMMAND_SPOKEN:Lcom/google/glass/userevent/UserEventAction;

    const-string v1, "24"

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/maps/NavigationActivity;->a(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->d:Lcom/google/glass/maps/NavigationManager;

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationManager;->h()Z

    move-result v5

    if-eqz v5, :cond_1

    sget v3, Lcom/google/glass/maps/bs;->voice_menu_item_hide_route_overview:I

    :goto_1
    new-instance v0, Lcom/google/glass/maps/ad;

    sget-object v2, Lcom/google/glass/voice/VoiceCommand;->r:Lcom/google/glass/voice/VoiceCommand;

    new-array v4, v6, [Lcom/google/glass/voice/menu/e;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/maps/ad;-><init>(Lcom/google/glass/maps/NavigationActivity;Lcom/google/glass/voice/VoiceCommand;I[Lcom/google/glass/voice/menu/e;Z)V

    new-instance v1, Lcom/google/glass/maps/af;

    sget-object v2, Lcom/google/glass/voice/VoiceCommand;->s:Lcom/google/glass/voice/VoiceCommand;

    sget v3, Lcom/google/glass/maps/bs;->voice_menu_item_stop_directions:I

    new-array v4, v6, [Lcom/google/glass/voice/menu/e;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/google/glass/maps/af;-><init>(Lcom/google/glass/maps/NavigationActivity;Lcom/google/glass/voice/VoiceCommand;I[Lcom/google/glass/voice/menu/e;)V

    sget-object v2, Lcom/google/glass/voice/VoiceConfig;->o:Lcom/google/glass/voice/VoiceConfig;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/glass/voice/menu/n;

    aput-object v0, v3, v6

    aput-object v1, v3, v7

    invoke-virtual {p0, v2, v3}, Lcom/google/glass/maps/NavigationActivity;->a(Lcom/google/glass/voice/VoiceConfig;[Lcom/google/glass/voice/menu/n;)V

    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->o:Lcom/google/glass/voice/VoiceConfig;

    goto :goto_0

    :cond_1
    sget v3, Lcom/google/glass/maps/bs;->voice_menu_item_show_route_overview:I

    goto :goto_1
.end method

.method public final a(I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->p:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->p:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->p:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/google/glass/maps/NavigationActivity;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public final a(ILjava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->h:Lcom/google/glass/maps/ay;

    sget v1, Lcom/google/glass/maps/bm;->voice_result_pane:I

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/ay;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->h:Lcom/google/glass/maps/ay;

    sget v1, Lcom/google/glass/maps/bm;->loading_pane:I

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/ay;->b(I)Landroid/view/View;

    move-result-object v1

    sget v0, Lcom/google/glass/maps/bm;->loading_message:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/google/glass/maps/bm;->loading_icon:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/google/glass/maps/NavigationActivity;->c(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/maps/driveabout/e/af;Ljava/util/List;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/glass/maps/NavigationActivity;->N()V

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->g:Lcom/google/glass/maps/ba;

    invoke-static {p1, p2}, Lcom/google/glass/maps/b/ao;->a(Lcom/google/android/maps/driveabout/e/af;Ljava/util/List;)Lcom/google/glass/maps/b/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/ba;->a(Lcom/google/glass/maps/b/h;)V

    return-void
.end method

.method public final a(Lcom/google/android/maps/driveabout/e/al;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/glass/maps/NavigationActivity;->N()V

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->v:Landroid/view/View;

    sget v1, Lcom/google/glass/maps/bl;->nav_overview_mask:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->g:Lcom/google/glass/maps/ba;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/ba;->b(Z)V

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->g:Lcom/google/glass/maps/ba;

    invoke-virtual {v0, p1}, Lcom/google/glass/maps/ba;->a(Lcom/google/android/maps/driveabout/e/al;)V

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->g:Lcom/google/glass/maps/ba;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/ba;->a(Z)V

    return-void
.end method

.method public final a(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/glass/maps/NavigationActivity;->N()V

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->g:Lcom/google/glass/maps/ba;

    invoke-virtual {v0, p1}, Lcom/google/glass/maps/ba;->a(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;)V

    iget-object v1, p0, Lcom/google/glass/maps/NavigationActivity;->q:Landroid/view/View;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/google/android/maps/driveabout/location/z;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/glass/maps/NavigationActivity;->N()V

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->g:Lcom/google/glass/maps/ba;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/z;->c()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/ba;->a(F)V

    return-void
.end method

.method public final a(Lcom/google/glass/maps/directions/i;I)V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->x:Lcom/google/glass/maps/directions/i;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/google/glass/maps/NavigationActivity;->x:Lcom/google/glass/maps/directions/i;

    invoke-direct {p0}, Lcom/google/glass/maps/NavigationActivity;->K()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/google/glass/maps/j;Ljava/lang/CharSequence;)V
    .locals 4

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->h:Lcom/google/glass/maps/ay;

    invoke-virtual {v0}, Lcom/google/glass/maps/ay;->c()Landroid/view/View;

    move-result-object v2

    sget v0, Lcom/google/glass/maps/bm;->turn_icon:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-nez p1, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    sget v0, Lcom/google/glass/maps/bm;->street_name:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/google/glass/maps/bk;->max_cue_width_no_icon:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_1
    iget-object v3, p0, Lcom/google/glass/maps/NavigationActivity;->w:Lcom/google/glass/maps/bx;

    invoke-virtual {v3, v0, p2, v1}, Lcom/google/glass/maps/bx;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/google/glass/maps/bm;->distance:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p1, p0}, Lcom/google/glass/maps/j;->a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/google/glass/maps/bk;->max_cue_width_with_icon:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_1
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->h:Lcom/google/glass/maps/ay;

    sget v1, Lcom/google/glass/maps/bm;->rerouting_pane:I

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/ay;->b(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/google/glass/maps/bm;->rerouting_message:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final a(Ljava/lang/CharSequence;Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->i:Lcom/google/glass/util/aq;

    new-instance v1, Lcom/google/glass/maps/ab;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/glass/maps/ab;-><init>(Lcom/google/glass/maps/NavigationActivity;Ljava/lang/CharSequence;Z)V

    invoke-virtual {v0, v1}, Lcom/google/glass/util/aq;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a([Lcom/google/android/maps/driveabout/nav/ao;)V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->i:Lcom/google/glass/util/aq;

    new-instance v1, Lcom/google/glass/maps/am;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/maps/am;-><init>(Lcom/google/glass/maps/NavigationActivity;[Lcom/google/android/maps/driveabout/nav/ao;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/util/aq;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a([Lcom/google/glass/maps/directions/i;)V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->i:Lcom/google/glass/util/aq;

    new-instance v1, Lcom/google/glass/maps/ak;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/maps/ak;-><init>(Lcom/google/glass/maps/NavigationActivity;[Lcom/google/glass/maps/directions/i;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/util/aq;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(IFFFFII)Z
    .locals 8

    invoke-super/range {p0 .. p7}, Lcom/google/glass/maps/BaseActivity;->a(IFFFFII)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->h:Lcom/google/glass/maps/ay;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/google/glass/maps/ay;->a(IFFFFII)Z

    move-result v0

    goto :goto_0
.end method

.method public final a(ILcom/google/glass/input/SwipeDirection;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/google/glass/maps/BaseActivity;->a(ILcom/google/glass/input/SwipeDirection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->h:Lcom/google/glass/maps/ay;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/maps/ay;->a(ILcom/google/glass/input/SwipeDirection;)Z

    move-result v0

    goto :goto_0
.end method

.method public final a(IZ)Z
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->h:Lcom/google/glass/maps/ay;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/maps/ay;->a(IZ)Z

    move-result v0

    return v0
.end method

.method public final b(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/glass/maps/NavigationActivity;->N()V

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->v:Landroid/view/View;

    sget v1, Lcom/google/glass/maps/bl;->nav_spotlight_mask:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->g:Lcom/google/glass/maps/ba;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/ba;->b(Z)V

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->g:Lcom/google/glass/maps/ba;

    invoke-virtual {v0, p1}, Lcom/google/glass/maps/ba;->b(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;)V

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->g:Lcom/google/glass/maps/ba;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/ba;->a(Z)V

    return-void
.end method

.method public final b(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->h:Lcom/google/glass/maps/ay;

    invoke-virtual {v0}, Lcom/google/glass/maps/ay;->a()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/maps/ay;->a(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/google/glass/maps/bm;->distance:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final c(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->n:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->n:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->n:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final c(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->m:Lcom/google/glass/util/bj;

    invoke-virtual {v0}, Lcom/google/glass/util/bj;->b()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->m:Lcom/google/glass/util/bj;

    invoke-virtual {v0}, Lcom/google/glass/util/bj;->d()V

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->m:Lcom/google/glass/util/bj;

    invoke-virtual {v0}, Lcom/google/glass/util/bj;->c()V

    goto :goto_0
.end method

.method public final d()Lcom/google/glass/logging/i;
    .locals 1

    sget-object v0, Lcom/google/glass/maps/NavigationActivity;->l:Lcom/google/glass/logging/i;

    return-object v0
.end method

.method public final d(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->o:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->o:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->o:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected final e()I
    .locals 1

    sget v0, Lcom/google/glass/maps/bo;->navigation_activity:I

    return v0
.end method

.method public final g()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/glass/maps/NavigationActivity;->h:Lcom/google/glass/maps/ay;

    invoke-virtual {v1}, Lcom/google/glass/maps/ay;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/google/glass/maps/NavigationActivity;->h:Lcom/google/glass/maps/ay;

    sget v2, Lcom/google/glass/maps/bm;->route_overview_pane:I

    invoke-virtual {v1, v2}, Lcom/google/glass/maps/ay;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationActivity;->l()Lcom/google/glass/sound/SoundManager;

    move-result-object v1

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->TAP:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v1, v2}, Lcom/google/glass/sound/SoundManager;->a(Lcom/google/glass/sound/SoundManager$SoundId;)I

    iget-object v1, p0, Lcom/google/glass/maps/NavigationActivity;->d:Lcom/google/glass/maps/NavigationManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/glass/maps/NavigationManager;->a(Z)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/glass/maps/NavigationActivity;->j:Lcom/google/glass/maps/ao;

    invoke-virtual {v1}, Lcom/google/glass/maps/ao;->i()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/glass/maps/NavigationActivity;->k:Lcom/google/glass/maps/directions/TransitMapView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/glass/maps/NavigationActivity;->k:Lcom/google/glass/maps/directions/TransitMapView;

    invoke-virtual {v1}, Lcom/google/glass/maps/directions/TransitMapView;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationActivity;->l()Lcom/google/glass/sound/SoundManager;

    move-result-object v1

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->TAP:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v1, v2}, Lcom/google/glass/sound/SoundManager;->a(Lcom/google/glass/sound/SoundManager$SoundId;)I

    iget-object v1, p0, Lcom/google/glass/maps/NavigationActivity;->k:Lcom/google/glass/maps/directions/TransitMapView;

    invoke-virtual {v1}, Lcom/google/glass/maps/directions/TransitMapView;->e()V

    goto :goto_0

    :cond_2
    invoke-super {p0}, Lcom/google/glass/maps/BaseActivity;->g()Z

    move-result v0

    goto :goto_0
.end method

.method protected final i()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final m()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final o()Lcom/google/glass/voice/VoiceConfig;
    .locals 1

    invoke-direct {p0}, Lcom/google/glass/maps/NavigationActivity;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->e:Lcom/google/glass/voice/VoiceConfig;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->d:Lcom/google/glass/voice/VoiceConfig;

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/google/glass/maps/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget-object v0, Lcom/google/glass/maps/NavigationActivity;->l:Lcom/google/glass/logging/i;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v2, -0x100

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/google/glass/util/aq;->a()Lcom/google/glass/util/aq;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/maps/NavigationActivity;->a(Lcom/google/glass/util/aq;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/google/glass/maps/bp;->navigation_menu:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->d:Lcom/google/glass/maps/NavigationManager;

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationManager;->a()V

    invoke-super {p0}, Lcom/google/glass/maps/BaseActivity;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/google/glass/maps/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    sget-object v0, Lcom/google/glass/maps/NavigationActivity;->l:Lcom/google/glass/logging/i;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNewIntent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/google/glass/maps/NavigationActivity;->a(Landroid/content/Intent;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/google/glass/maps/NavigationActivity;->L()V

    invoke-static {p0}, Lcom/google/glass/maps/c/p;->a(Landroid/content/Context;)I

    move-result v4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v5, Lcom/google/glass/maps/bm;->stop:I

    if-ne v0, v5, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationActivity;->z()V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v5, Lcom/google/glass/maps/bm;->show_route:I

    if-ne v0, v5, :cond_2

    if-ne v4, v1, :cond_1

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->k:Lcom/google/glass/maps/directions/TransitMapView;

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/directions/TransitMapView;->a(Z)V

    :goto_1
    invoke-static {p0}, Lcom/google/glass/maps/GlassUserEventLogger;->b(Landroid/content/Context;)V

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->d:Lcom/google/glass/maps/NavigationManager;

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/NavigationManager;->a(Z)V

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v5, Lcom/google/glass/maps/bm;->show_steps:I

    if-ne v0, v5, :cond_3

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->h:Lcom/google/glass/maps/ay;

    sget v2, Lcom/google/glass/maps/bm;->steps_pane:I

    invoke-virtual {v0, v2}, Lcom/google/glass/maps/ay;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/StepCardsView;

    iget-object v2, p0, Lcom/google/glass/maps/NavigationActivity;->x:Lcom/google/glass/maps/directions/i;

    iget-object v3, p0, Lcom/google/glass/maps/NavigationActivity;->e:Lcom/google/glass/maps/g;

    invoke-virtual {v3}, Lcom/google/glass/maps/g;->f()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/google/glass/maps/StepCardsView;->setTrip(Lcom/google/glass/maps/directions/i;I)V

    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationActivity;->l()Lcom/google/glass/sound/SoundManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/glass/maps/StepCardsView;->setSoundManager(Lcom/google/glass/sound/SoundManager;)V

    invoke-static {p0}, Lcom/google/glass/maps/GlassUserEventLogger;->c(Landroid/content/Context;)V

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v5, Lcom/google/glass/maps/bm;->change_route:I

    if-ne v0, v5, :cond_4

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->e:Lcom/google/glass/maps/g;

    invoke-virtual {v0}, Lcom/google/glass/maps/g;->b()V

    invoke-static {p0}, Lcom/google/glass/maps/GlassUserEventLogger;->d(Landroid/content/Context;)V

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v5, Lcom/google/glass/maps/bm;->transit:I

    if-ne v0, v5, :cond_6

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->u:Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->u:Landroid/opengl/GLSurfaceView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/opengl/GLSurfaceView;->setVisibility(I)V

    :cond_5
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->d:Lcom/google/glass/maps/NavigationManager;

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationManager;->b()V

    invoke-static {p0, v4, v1}, Lcom/google/glass/maps/GlassUserEventLogger;->a(Landroid/content/Context;II)V

    invoke-direct {p0}, Lcom/google/glass/maps/NavigationActivity;->M()V

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->h:Lcom/google/glass/maps/ay;

    sget v2, Lcom/google/glass/maps/bm;->loading_pane_stub:I

    invoke-virtual {v0, v2}, Lcom/google/glass/maps/ay;->b(I)Landroid/view/View;

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->j:Lcom/google/glass/maps/ao;

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/ao;->a(Z)V

    invoke-static {p0, v1}, Lcom/google/glass/maps/c/p;->a(Landroid/content/Context;I)I

    invoke-direct {p0, v1}, Lcom/google/glass/maps/NavigationActivity;->d(Z)V

    move v0, v1

    goto/16 :goto_0

    :cond_6
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v5, Lcom/google/glass/maps/bm;->agency_website:I

    if-ne v0, v5, :cond_8

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->z:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/google/glass/c/a;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_2
    move v0, v2

    goto/16 :goto_0

    :cond_8
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v5, Lcom/google/glass/maps/bm;->call_agency:I

    if-ne v0, v5, :cond_9

    new-instance v0, Lcom/google/glass/phone/b;

    invoke-direct {v0, p0}, Lcom/google/glass/phone/b;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->z:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/google/glass/phone/b;->a(Lcom/google/glass/app/GlassActivity;Ljava/lang/String;)Z

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->u:Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->u:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v2}, Landroid/opengl/GLSurfaceView;->setVisibility(I)V

    :cond_a
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v5, Lcom/google/glass/maps/bm;->drive:I

    if-ne v0, v5, :cond_c

    move v0, v2

    :goto_3
    if-eq v0, v3, :cond_7

    if-ne v4, v1, :cond_e

    sget-object v3, Lcom/google/glass/maps/GlassUserEventLogger$EndReason;->CHANGE_TRAVEL_MODE:Lcom/google/glass/maps/GlassUserEventLogger$EndReason;

    iget-object v5, p0, Lcom/google/glass/maps/NavigationActivity;->e:Lcom/google/glass/maps/g;

    invoke-virtual {v5}, Lcom/google/glass/maps/g;->i()I

    move-result v5

    invoke-static {p0, v3, v5}, Lcom/google/glass/maps/GlassUserEventLogger;->b(Landroid/content/Context;Lcom/google/glass/maps/GlassUserEventLogger$EndReason;I)V

    :goto_4
    invoke-static {p0, v4, v0}, Lcom/google/glass/maps/GlassUserEventLogger;->a(Landroid/content/Context;II)V

    iget-object v3, p0, Lcom/google/glass/maps/NavigationActivity;->j:Lcom/google/glass/maps/ao;

    invoke-virtual {v3}, Lcom/google/glass/maps/ao;->i()Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/google/glass/maps/NavigationActivity;->e:Lcom/google/glass/maps/g;

    invoke-virtual {v3}, Lcom/google/glass/maps/g;->a()V

    :cond_b
    iget-object v3, p0, Lcom/google/glass/maps/NavigationActivity;->j:Lcom/google/glass/maps/ao;

    invoke-virtual {v3, v2}, Lcom/google/glass/maps/ao;->a(Z)V

    invoke-direct {p0}, Lcom/google/glass/maps/NavigationActivity;->M()V

    sget-object v3, Lcom/google/glass/maps/NavigationActivity;->l:Lcom/google/glass/logging/i;

    const-string v4, "Start Navigation (change travel mode): %s"

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/glass/maps/NavigationActivity;->j:Lcom/google/glass/maps/ao;

    invoke-virtual {v6}, Lcom/google/glass/maps/ao;->h()Lcom/google/android/maps/driveabout/nav/ao;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/i;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0, v0}, Lcom/google/glass/maps/c/p;->a(Landroid/content/Context;I)I

    invoke-direct {p0, v1}, Lcom/google/glass/maps/NavigationActivity;->d(Z)V

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->h:Lcom/google/glass/maps/ay;

    sget v2, Lcom/google/glass/maps/bm;->loading_pane:I

    invoke-virtual {v0, v2}, Lcom/google/glass/maps/ay;->b(I)Landroid/view/View;

    move v0, v1

    goto/16 :goto_0

    :cond_c
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v5, Lcom/google/glass/maps/bm;->walk:I

    if-ne v0, v5, :cond_d

    const/4 v0, 0x2

    goto :goto_3

    :cond_d
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v5, Lcom/google/glass/maps/bm;->bike:I

    if-ne v0, v5, :cond_f

    const/4 v0, 0x3

    goto :goto_3

    :cond_e
    sget-object v3, Lcom/google/glass/maps/GlassUserEventLogger$EndReason;->CHANGE_TRAVEL_MODE:Lcom/google/glass/maps/GlassUserEventLogger$EndReason;

    iget-object v5, p0, Lcom/google/glass/maps/NavigationActivity;->d:Lcom/google/glass/maps/NavigationManager;

    invoke-virtual {v5}, Lcom/google/glass/maps/NavigationManager;->j()I

    move-result v5

    invoke-static {p0, v3, v5}, Lcom/google/glass/maps/GlassUserEventLogger;->a(Landroid/content/Context;Lcom/google/glass/maps/GlassUserEventLogger$EndReason;I)V

    goto :goto_4

    :cond_f
    move v0, v3

    goto :goto_3
.end method

.method public onPause()V
    .locals 4

    invoke-super {p0}, Lcom/google/glass/maps/BaseActivity;->onPause()V

    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x8000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/maps/NavigationActivity;->y:Z

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->g:Lcom/google/glass/maps/ba;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->g:Lcom/google/glass/maps/ba;

    invoke-virtual {v0}, Lcom/google/glass/maps/ba;->f()V

    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->h:Lcom/google/glass/maps/ay;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->h:Lcom/google/glass/maps/ay;

    sget v1, Lcom/google/glass/maps/bm;->route_overview_pane:I

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/ay;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->i:Lcom/google/glass/util/aq;

    iget-object v1, p0, Lcom/google/glass/maps/NavigationActivity;->A:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/util/aq;->a(Ljava/lang/Runnable;J)Z

    :cond_1
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->j:Lcom/google/glass/maps/ao;

    invoke-virtual {v0}, Lcom/google/glass/maps/ao;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->e:Lcom/google/glass/maps/g;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->h:Lcom/google/glass/maps/ay;

    invoke-virtual {v0}, Lcom/google/glass/maps/ay;->a()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/google/glass/maps/StepCardsView;

    if-eqz v1, :cond_5

    check-cast v0, Lcom/google/glass/maps/StepCardsView;

    invoke-virtual {v0}, Lcom/google/glass/maps/StepCardsView;->a()I

    move-result v0

    iget-object v1, p0, Lcom/google/glass/maps/NavigationActivity;->e:Lcom/google/glass/maps/g;

    invoke-virtual {v1, v0}, Lcom/google/glass/maps/g;->a(I)V

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->e:Lcom/google/glass/maps/g;

    invoke-virtual {v0}, Lcom/google/glass/maps/g;->c()V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->f:Lcom/google/android/maps/driveabout/location/t;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/location/t;->e()V

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->u:Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->u:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onPause()V

    :cond_3
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->k:Lcom/google/glass/maps/directions/TransitMapView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->k:Lcom/google/glass/maps/directions/TransitMapView;

    invoke-virtual {v0}, Lcom/google/glass/maps/directions/TransitMapView;->b()V

    :cond_4
    invoke-direct {p0}, Lcom/google/glass/maps/NavigationActivity;->I()V

    invoke-direct {p0}, Lcom/google/glass/maps/NavigationActivity;->M()V

    return-void

    :cond_5
    instance-of v0, v0, Lcom/google/glass/maps/directions/TransitMapView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->e:Lcom/google/glass/maps/g;

    invoke-virtual {v0}, Lcom/google/glass/maps/g;->c()V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->z:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->h:Lcom/google/glass/maps/ay;

    sget v3, Lcom/google/glass/maps/bm;->steps_pane:I

    invoke-virtual {v0, v3}, Lcom/google/glass/maps/ay;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->h:Lcom/google/glass/maps/ay;

    invoke-virtual {v0}, Lcom/google/glass/maps/ay;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/StepCardsView;

    invoke-virtual {v0}, Lcom/google/glass/maps/StepCardsView;->b()Lcom/google/glass/maps/directions/b;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/glass/maps/directions/b;->h()Lcom/google/glass/maps/directions/d;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/google/glass/maps/directions/b;->h()Lcom/google/glass/maps/directions/d;

    move-result-object v0

    iget-object v1, v0, Lcom/google/glass/maps/directions/d;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget v1, Lcom/google/glass/maps/bm;->agency_website:I

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v3, p0, Lcom/google/glass/maps/NavigationActivity;->z:Ljava/util/HashMap;

    iget-object v4, v0, Lcom/google/glass/maps/directions/d;->b:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lcom/google/glass/maps/directions/d;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/glass/view/MenuUtils;->setDescription(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v1, v0, Lcom/google/glass/maps/directions/d;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    sget v1, Lcom/google/glass/maps/bm;->call_agency:I

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/google/glass/maps/NavigationActivity;->z:Ljava/util/HashMap;

    iget-object v3, v0, Lcom/google/glass/maps/directions/d;->c:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/google/glass/maps/directions/d;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/android/glass/view/MenuUtils;->setDescription(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V

    :cond_2
    invoke-super {p0, p1}, Lcom/google/glass/maps/BaseActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    :goto_1
    return v0

    :cond_3
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->j:Lcom/google/glass/maps/ao;

    invoke-virtual {v0}, Lcom/google/glass/maps/ao;->i()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->d:Lcom/google/glass/maps/NavigationManager;

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationManager;->c()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->d:Lcom/google/glass/maps/NavigationManager;

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationManager;->e()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_4
    invoke-static {p0}, Lcom/google/glass/maps/c/p;->a(Landroid/content/Context;)I

    move-result v4

    sget v0, Lcom/google/glass/maps/bm;->drive:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    if-eqz v4, :cond_5

    move v0, v2

    :goto_2
    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    sget v0, Lcom/google/glass/maps/bm;->walk:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    const/4 v0, 0x2

    if-eq v4, v0, :cond_6

    move v0, v2

    :goto_3
    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    sget v0, Lcom/google/glass/maps/bm;->bike:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    const/4 v0, 0x3

    if-eq v4, v0, :cond_7

    move v0, v2

    :goto_4
    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    sget v0, Lcom/google/glass/maps/bm;->transit:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    if-eq v4, v2, :cond_8

    sget-object v0, Lcom/google/glass/util/Labs$Feature;->NV_TRST:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->a(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v2

    :goto_5
    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_6
    if-eqz v3, :cond_d

    sget v0, Lcom/google/glass/maps/bm;->show_route:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->k:Lcom/google/glass/maps/directions/TransitMapView;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->k:Lcom/google/glass/maps/directions/TransitMapView;

    invoke-virtual {v0}, Lcom/google/glass/maps/directions/TransitMapView;->c()Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v2

    :goto_7
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    sget v0, Lcom/google/glass/maps/bm;->change_route:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->e:Lcom/google/glass/maps/g;

    invoke-virtual {v0}, Lcom/google/glass/maps/g;->k()Z

    move-result v0

    if-nez v0, :cond_b

    move v0, v2

    :goto_8
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    sget v0, Lcom/google/glass/maps/bm;->stop:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v3, p0, Lcom/google/glass/maps/NavigationActivity;->e:Lcom/google/glass/maps/g;

    invoke-virtual {v3}, Lcom/google/glass/maps/g;->k()Z

    move-result v3

    if-nez v3, :cond_c

    :goto_9
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_a
    sget v0, Lcom/google/glass/maps/bm;->show_steps:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v2, p0, Lcom/google/glass/maps/NavigationActivity;->h:Lcom/google/glass/maps/ay;

    sget v3, Lcom/google/glass/maps/bm;->transit_map_pane:I

    invoke-virtual {v2, v3}, Lcom/google/glass/maps/ay;->a(I)Z

    move-result v2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    sget v0, Lcom/google/glass/maps/bm;->agency_website:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    sget v0, Lcom/google/glass/maps/bm;->call_agency:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-super {p0, p1}, Lcom/google/glass/maps/BaseActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto/16 :goto_1

    :cond_5
    move v0, v1

    goto/16 :goto_2

    :cond_6
    move v0, v1

    goto/16 :goto_3

    :cond_7
    move v0, v1

    goto/16 :goto_4

    :cond_8
    move v0, v1

    goto :goto_5

    :cond_9
    sget v0, Lcom/google/glass/maps/bm;->drive:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    sget v0, Lcom/google/glass/maps/bm;->walk:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    sget v0, Lcom/google/glass/maps/bm;->bike:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    sget v0, Lcom/google/glass/maps/bm;->transit:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_6

    :cond_a
    move v0, v1

    goto/16 :goto_7

    :cond_b
    move v0, v1

    goto :goto_8

    :cond_c
    move v2, v1

    goto :goto_9

    :cond_d
    sget v0, Lcom/google/glass/maps/bm;->show_route:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->d:Lcom/google/glass/maps/NavigationManager;

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationManager;->c()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->d:Lcom/google/glass/maps/NavigationManager;

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationManager;->h()Z

    move-result v0

    if-nez v0, :cond_e

    move v0, v2

    :goto_b
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    sget v0, Lcom/google/glass/maps/bm;->stop:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v3, p0, Lcom/google/glass/maps/NavigationActivity;->d:Lcom/google/glass/maps/NavigationManager;

    invoke-virtual {v3}, Lcom/google/glass/maps/NavigationManager;->f()Z

    move-result v3

    if-nez v3, :cond_f

    :goto_c
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    sget v0, Lcom/google/glass/maps/bm;->change_route:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_a

    :cond_e
    move v0, v1

    goto :goto_b

    :cond_f
    move v2, v1

    goto :goto_c
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/google/glass/maps/BaseActivity;->onResume()V

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->m:Lcom/google/glass/util/bj;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/util/bj;->a(J)V

    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x8000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-direct {p0}, Lcom/google/glass/maps/NavigationActivity;->G()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/glass/maps/BaseActivity;->onWindowFocusChanged(Z)V

    invoke-direct {p0}, Lcom/google/glass/maps/NavigationActivity;->I()V

    return-void
.end method

.method protected final x()V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->h:Lcom/google/glass/maps/ay;

    sget v1, Lcom/google/glass/maps/bm;->route_overview_pane:I

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/ay;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationActivity;->y()V

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->d:Lcom/google/glass/maps/NavigationManager;

    invoke-virtual {v0, v6}, Lcom/google/glass/maps/NavigationManager;->a(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->h:Lcom/google/glass/maps/ay;

    sget v1, Lcom/google/glass/maps/bm;->steps_pane:I

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/ay;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->h:Lcom/google/glass/maps/ay;

    invoke-virtual {v0}, Lcom/google/glass/maps/ay;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/StepCardsView;

    invoke-virtual {v0}, Lcom/google/glass/maps/StepCardsView;->a()I

    move-result v0

    iget-object v1, p0, Lcom/google/glass/maps/NavigationActivity;->e:Lcom/google/glass/maps/g;

    invoke-virtual {v1, v0}, Lcom/google/glass/maps/g;->a(I)V

    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationActivity;->y()V

    invoke-direct {p0}, Lcom/google/glass/maps/NavigationActivity;->K()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->h:Lcom/google/glass/maps/ay;

    sget v1, Lcom/google/glass/maps/bm;->trips_pane:I

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/ay;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationActivity;->y()V

    invoke-direct {p0}, Lcom/google/glass/maps/NavigationActivity;->K()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->e:Lcom/google/glass/maps/g;

    invoke-virtual {v0}, Lcom/google/glass/maps/g;->h()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity;->d:Lcom/google/glass/maps/NavigationManager;

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationManager;->c()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/google/glass/maps/NavigationActivity;->J()V

    invoke-static {p0}, Lcom/google/glass/maps/NavigationService;->a(Landroid/content/Context;)V

    :goto_1
    sget-object v0, Lcom/google/glass/maps/NavigationActivity;->l:Lcom/google/glass/logging/i;

    const-string v1, "onDismissCompleted - finish()"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationActivity;->finish()V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/google/glass/timeline/TimelineItemId;

    sget-object v1, Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;->NAVIGATION:Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    invoke-static {v1}, Lcom/google/glass/timeline/a/a;->a(Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineItemId;-><init>(Ljava/lang/String;ZJLjava/lang/String;Z)V

    invoke-static {p0, v0, v6}, Lcom/google/glass/timeline/c;->a(Landroid/content/Context;Lcom/google/glass/timeline/TimelineItemId;Z)V

    goto :goto_1
.end method

.method final z()V
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    new-instance v0, Lcom/google/glass/widget/p;

    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationActivity;->l()Lcom/google/glass/sound/SoundManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/glass/widget/p;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V

    sget v1, Lcom/google/glass/maps/bs;->voice_menu_stopping_directions:I

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/p;->d(I)Lcom/google/glass/widget/p;

    move-result-object v0

    sget v1, Lcom/google/glass/maps/bl;->ic_no_medium:I

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/p;->e(I)Lcom/google/glass/widget/p;

    move-result-object v0

    sget v1, Lcom/google/glass/maps/bs;->voice_menu_stopped_directions:I

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/p;->a(I)Lcom/google/glass/widget/p;

    move-result-object v0

    sget v1, Lcom/google/glass/maps/bl;->ic_done_medium:I

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/p;->c(I)Lcom/google/glass/widget/p;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/p;->a(Lcom/google/glass/sound/SoundManager$SoundId;)Lcom/google/glass/widget/p;

    move-result-object v0

    new-instance v1, Lcom/google/glass/maps/ag;

    invoke-direct {v1, p0}, Lcom/google/glass/maps/ag;-><init>(Lcom/google/glass/maps/NavigationActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/p;->a(Lcom/google/glass/widget/q;)Lcom/google/glass/widget/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/widget/p;->a()Lcom/google/glass/widget/n;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/NavigationActivity;->a(Lcom/google/glass/widget/n;)V

    return-void
.end method
