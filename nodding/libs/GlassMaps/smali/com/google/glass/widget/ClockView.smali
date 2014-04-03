.class public Lcom/google/glass/widget/ClockView;
.super Lcom/google/glass/widget/TypophileTextView;


# static fields
.field private static final a:Lcom/google/glass/logging/i;

.field private static final b:Lcom/google/glass/logging/i;


# instance fields
.field private final c:Lcom/google/glass/util/SafeBroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/google/glass/logging/j;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/widget/ClockView;->a:Lcom/google/glass/logging/i;

    sget-object v0, Lcom/google/glass/widget/ClockView;->a:Lcom/google/glass/logging/i;

    const-string v1, "timeReceiver"

    invoke-static {v0, v1}, Lcom/google/glass/logging/j;->a(Lcom/google/glass/logging/i;Ljava/lang/String;)Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/widget/ClockView;->b:Lcom/google/glass/logging/i;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/widget/ClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/google/glass/widget/TypophileTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/google/glass/widget/ClockView$1;

    invoke-direct {v0, p0}, Lcom/google/glass/widget/ClockView$1;-><init>(Lcom/google/glass/widget/ClockView;)V

    iput-object v0, p0, Lcom/google/glass/widget/ClockView;->c:Lcom/google/glass/util/SafeBroadcastReceiver;

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/ClockView;->setGravity(I)V

    invoke-direct {p0}, Lcom/google/glass/widget/ClockView;->b()V

    return-void
.end method

.method static synthetic a()Lcom/google/glass/logging/i;
    .locals 1

    sget-object v0, Lcom/google/glass/widget/ClockView;->b:Lcom/google/glass/logging/i;

    return-object v0
.end method

.method static synthetic a(Lcom/google/glass/widget/ClockView;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/glass/widget/ClockView;->b()V

    return-void
.end method

.method private b()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/glass/widget/ClockView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v0, v1, v3}, Lcom/google/glass/util/w;->a(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/ClockView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
