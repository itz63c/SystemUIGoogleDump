.class Lcom/google/android/systemui/gamedashboard/EntryPointController$ViewRippler$1;
.super Ljava/lang/Object;
.source "EntryPointController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/gamedashboard/EntryPointController$ViewRippler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/systemui/gamedashboard/EntryPointController$ViewRippler;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/gamedashboard/EntryPointController$ViewRippler;)V
    .locals 0

    .line 322
    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController$ViewRippler$1;->this$1:Lcom/google/android/systemui/gamedashboard/EntryPointController$ViewRippler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 325
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController$ViewRippler$1;->this$1:Lcom/google/android/systemui/gamedashboard/EntryPointController$ViewRippler;

    invoke-static {v0}, Lcom/google/android/systemui/gamedashboard/EntryPointController$ViewRippler;->access$400(Lcom/google/android/systemui/gamedashboard/EntryPointController$ViewRippler;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController$ViewRippler$1;->this$1:Lcom/google/android/systemui/gamedashboard/EntryPointController$ViewRippler;

    invoke-static {v0}, Lcom/google/android/systemui/gamedashboard/EntryPointController$ViewRippler;->access$400(Lcom/google/android/systemui/gamedashboard/EntryPointController$ViewRippler;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 329
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController$ViewRippler$1;->this$1:Lcom/google/android/systemui/gamedashboard/EntryPointController$ViewRippler;

    invoke-static {p0}, Lcom/google/android/systemui/gamedashboard/EntryPointController$ViewRippler;->access$400(Lcom/google/android/systemui/gamedashboard/EntryPointController$ViewRippler;)Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    return-void
.end method
