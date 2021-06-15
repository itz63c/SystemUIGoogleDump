.class Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer$1;
.super Ljava/lang/Object;
.source "OneHandedBackgroundPanelOrganizer.java"

# interfaces
.implements Lcom/android/wm/shell/onehanded/OneHandedAnimationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;


# direct methods
.method public static synthetic $r8$lambda$09ohx26vmH5gBDvieSe-Csgu3Ms(Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer$1;->lambda$onOneHandedAnimationStart$0()V

    return-void
.end method

.method constructor <init>(Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer$1;->this$0:Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onOneHandedAnimationStart$0()V
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer$1;->this$0:Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;

    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->showBackgroundPanelLayer()V

    return-void
.end method


# virtual methods
.method public onOneHandedAnimationStart(Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;)V
    .locals 1

    .line 79
    iget-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer$1;->this$0:Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;

    invoke-static {p1}, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->access$000(Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;)Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer$1;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
