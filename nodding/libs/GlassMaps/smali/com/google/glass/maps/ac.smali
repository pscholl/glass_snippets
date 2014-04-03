.class final Lcom/google/glass/maps/ac;
.super Lcom/google/glass/widget/s;


# instance fields
.field final synthetic a:Lcom/google/glass/maps/ab;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/ab;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/maps/ac;->a:Lcom/google/glass/maps/ab;

    invoke-direct {p0}, Lcom/google/glass/widget/s;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/maps/ac;->a:Lcom/google/glass/maps/ab;

    iget-object v0, v0, Lcom/google/glass/maps/ab;->c:Lcom/google/glass/maps/NavigationActivity;

    sget-object v1, Lcom/google/glass/input/InputListener$DismissAction;->OPTION_ITEM:Lcom/google/glass/input/InputListener$DismissAction;

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/NavigationActivity;->a(Lcom/google/glass/input/InputListener$DismissAction;)Z

    return-void
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/ac;->a:Lcom/google/glass/maps/ab;

    iget-object v0, v0, Lcom/google/glass/maps/ab;->c:Lcom/google/glass/maps/NavigationActivity;

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationActivity;->g()Z

    const/4 v0, 0x0

    return v0
.end method
