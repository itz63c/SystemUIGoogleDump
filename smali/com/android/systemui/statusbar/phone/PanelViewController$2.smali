.class Lcom/android/systemui/statusbar/phone/PanelViewController$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PanelViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PanelViewController;->flingToHeight(FZFFZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCancelled:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

.field final synthetic val$expand:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)V
    .locals 0

    .line 577
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$2;->val$expand:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 588
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$2;->mCancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 593
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$2;->val$expand:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$200(Lcom/android/systemui/statusbar/phone/PanelViewController;)F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    .line 596
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$300(Lcom/android/systemui/statusbar/phone/PanelViewController;)V

    goto :goto_0

    .line 598
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$2;->mCancelled:Z

    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$400(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)V

    :goto_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 582
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    .line 583
    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$100(Lcom/android/systemui/statusbar/phone/PanelViewController;)Lcom/android/systemui/statusbar/phone/PanelView;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Landroid/view/View;I)Z

    return-void
.end method
