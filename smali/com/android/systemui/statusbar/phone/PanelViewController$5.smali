.class Lcom/android/systemui/statusbar/phone/PanelViewController$5;
.super Ljava/lang/Object;
.source "PanelViewController.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PanelViewController;->expand(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PanelViewController;)V
    .locals 0

    .line 839
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$5;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .line 842
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$5;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$600(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 843
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$5;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$100(Lcom/android/systemui/statusbar/phone/PanelViewController;)Lcom/android/systemui/statusbar/phone/PanelView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void

    .line 846
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$5;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNotificationShadeWindowView()Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isVisibleToUser()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 847
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$5;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$100(Lcom/android/systemui/statusbar/phone/PanelViewController;)Lcom/android/systemui/statusbar/phone/PanelView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 848
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$5;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$700(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 849
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$5;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->notifyExpandingStarted()V

    .line 850
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$5;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$100(Lcom/android/systemui/statusbar/phone/PanelViewController;)Lcom/android/systemui/statusbar/phone/PanelView;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Landroid/view/View;I)Z

    .line 852
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$5;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/statusbar/phone/PanelViewController;->fling(FZ)V

    goto :goto_0

    .line 854
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$5;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->setExpandedFraction(F)V

    .line 856
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$5;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$602(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    :cond_2
    return-void
.end method
