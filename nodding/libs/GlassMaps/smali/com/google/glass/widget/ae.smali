.class final Lcom/google/glass/widget/ae;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/google/glass/widget/ac;


# direct methods
.method constructor <init>(Lcom/google/glass/widget/ac;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/widget/ae;->a:Lcom/google/glass/widget/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/widget/ae;->a:Lcom/google/glass/widget/ac;

    invoke-static {v0}, Lcom/google/glass/widget/ac;->a(Lcom/google/glass/widget/ac;)Lcom/google/glass/widget/af;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/widget/af;->a()V

    return-void
.end method
