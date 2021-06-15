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

    .line 101
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 107
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController$TouchHandler;->mBlockNextTouch:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 108
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController$TouchHandler;->mBlockNextTouch:Z

    return v1

    .line 111
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_1

    .line 112
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

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;->access$200(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    .line 119
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_3

    .line 121
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;->access$300(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;)Lcom/android/systemui/plugins/FalsingManager;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTap(I)Z

    move-result p0

    return p0

    :cond_3
    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
