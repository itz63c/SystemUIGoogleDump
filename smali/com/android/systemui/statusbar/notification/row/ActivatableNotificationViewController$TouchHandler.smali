.class Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController$TouchHandler;
.super Ljava/lang/Object;
.source "ActivatableNotificationViewController.java"

# interfaces
.implements Lcom/android/systemui/Gefingerpoken;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TouchHandler"
.end annotation


# instance fields
.field private mBlockNextTouch:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;->access$200(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;

    .line 132
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;->access$800(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->disallowSingleClick(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;

    .line 133
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;->access$300(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p1

    if-nez p1, :cond_1

    .line 134
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;->access$900(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->isActive()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 136
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;->access$1000(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;)Lcom/android/systemui/plugins/FalsingManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/plugins/FalsingManager;->isFalseDoubleTap()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 137
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController$TouchHandler;->mBlockNextTouch:Z

    .line 138
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;->access$1100(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->makeInactive(Z)V

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 108
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController$TouchHandler;->mBlockNextTouch:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 109
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController$TouchHandler;->mBlockNextTouch:Z

    return v0

    .line 112
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v0, :cond_1

    .line 113
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;->access$100(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setLastActionUpTime(J)V

    .line 115
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;->access$200(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;->access$300(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;

    .line 116
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;->access$400(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->isInteractive()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 117
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;->access$200(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;->access$500(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->isDimmed()Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    .line 122
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;->access$700(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;)Lcom/android/systemui/statusbar/phone/NotificationTapHelper;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;->access$600(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result p0

    invoke-virtual {p1, p2, p0}, Lcom/android/systemui/statusbar/phone/NotificationTapHelper;->onTouchEvent(Landroid/view/MotionEvent;I)Z

    move-result p0

    return p0

    :cond_3
    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
