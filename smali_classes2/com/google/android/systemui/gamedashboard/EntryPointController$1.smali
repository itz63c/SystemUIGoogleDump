.class Lcom/google/android/systemui/gamedashboard/EntryPointController$1;
.super Ljava/lang/Object;
.source "EntryPointController.java"

# interfaces
.implements Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/gamedashboard/EntryPointController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/gamedashboard/EntryPointController;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/gamedashboard/EntryPointController;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController$1;->this$0:Lcom/google/android/systemui/gamedashboard/EntryPointController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private cleanUp()V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController$1;->this$0:Lcom/google/android/systemui/gamedashboard/EntryPointController;

    invoke-static {v0}, Lcom/google/android/systemui/gamedashboard/EntryPointController;->access$100(Lcom/google/android/systemui/gamedashboard/EntryPointController;)Lcom/google/android/systemui/gamedashboard/ShortcutBarController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->hide()V

    .line 104
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController$1;->this$0:Lcom/google/android/systemui/gamedashboard/EntryPointController;

    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/google/android/systemui/gamedashboard/EntryPointController;->access$202(Lcom/google/android/systemui/gamedashboard/EntryPointController;I)I

    return-void
.end method


# virtual methods
.method public onQuickSwitchToNewTask(I)V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/EntryPointController$1;->cleanUp()V

    return-void
.end method

.method public onSwipeToHomeFinished()V
    .locals 0

    .line 94
    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/EntryPointController$1;->cleanUp()V

    return-void
.end method
