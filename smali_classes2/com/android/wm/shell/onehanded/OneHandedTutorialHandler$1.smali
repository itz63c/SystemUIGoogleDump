.class Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler$1;
.super Ljava/lang/Object;
.source "OneHandedTutorialHandler.java"

# interfaces
.implements Lcom/android/wm/shell/onehanded/OneHandedAnimationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;


# direct methods
.method constructor <init>(Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler$1;->this$0:Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(FF)V
    .locals 1

    .line 82
    iget-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler$1;->this$0:Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;

    invoke-static {p1}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->access$000(Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 85
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler$1;->this$0:Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;

    invoke-static {p1}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->access$100(Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;)Landroid/view/ViewGroup;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 86
    iget-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler$1;->this$0:Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;

    invoke-static {p1}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->access$100(Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;)Landroid/view/ViewGroup;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setTransitionGroup(Z)V

    .line 87
    iget-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler$1;->this$0:Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;

    invoke-static {p1}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->access$100(Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;)Landroid/view/ViewGroup;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler$1;->this$0:Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;

    invoke-static {p0}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->access$100(Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;)Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr p2, p0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setTranslationY(F)V

    return-void
.end method

.method public onOneHandedAnimationStart(Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;)V
    .locals 2

    .line 93
    invoke-virtual {p1}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->getStartValue()F

    move-result p1

    .line 94
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler$1;->this$0:Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;

    invoke-static {v0}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->access$200(Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;)Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler$ONE_HANDED_TRIGGER_STATE;

    move-result-object v0

    sget-object v1, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler$ONE_HANDED_TRIGGER_STATE;->UNSET:Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler$ONE_HANDED_TRIGGER_STATE;

    if-ne v0, v1, :cond_1

    .line 95
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler$1;->this$0:Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-nez p1, :cond_0

    .line 96
    sget-object p1, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler$ONE_HANDED_TRIGGER_STATE;->ENTERING:Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler$ONE_HANDED_TRIGGER_STATE;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler$ONE_HANDED_TRIGGER_STATE;->EXITING:Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler$ONE_HANDED_TRIGGER_STATE;

    .line 95
    :goto_0
    invoke-static {v0, p1}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->access$202(Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler$ONE_HANDED_TRIGGER_STATE;)Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler$ONE_HANDED_TRIGGER_STATE;

    .line 97
    iget-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler$1;->this$0:Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;

    invoke-static {p1}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->access$300(Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler$1;->this$0:Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;

    invoke-static {p1}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->access$200(Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;)Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler$ONE_HANDED_TRIGGER_STATE;

    move-result-object p1

    sget-object v0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler$ONE_HANDED_TRIGGER_STATE;->ENTERING:Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler$ONE_HANDED_TRIGGER_STATE;

    if-ne p1, v0, :cond_1

    .line 98
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler$1;->this$0:Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;

    invoke-static {p0}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->access$400(Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;)V

    :cond_1
    return-void
.end method
