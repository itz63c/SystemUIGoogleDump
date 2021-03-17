.class public Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;
.super Ljava/lang/Object;
.source "PanelViewController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PanelViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TouchHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/PanelViewController;)V
    .locals 0

    .line 1127
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1129
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$500(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$800(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$900(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1000(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1130
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 1143
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1100(Lcom/android/systemui/statusbar/phone/PanelViewController;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_1

    .line 1146
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1102(Lcom/android/systemui/statusbar/phone/PanelViewController;I)I

    move v0, v1

    .line 1148
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 1149
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 1150
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PanelViewController;->canCollapsePanelOnTouch()Z

    move-result v3

    .line 1152
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_9

    if-eq v4, v5, :cond_8

    const/4 v6, 0x2

    if-eq v4, v6, :cond_5

    const/4 v0, 0x3

    if-eq v4, v0, :cond_8

    const/4 v0, 0x5

    if-eq v4, v0, :cond_4

    const/4 v0, 0x6

    if-eq v4, v0, :cond_2

    goto/16 :goto_1

    .line 1179
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 1180
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1100(Lcom/android/systemui/statusbar/phone/PanelViewController;)I

    move-result v2

    if-ne v2, v0, :cond_e

    .line 1182
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    if-eq v2, v0, :cond_3

    move v5, v1

    .line 1183
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1102(Lcom/android/systemui/statusbar/phone/PanelViewController;I)I

    .line 1184
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1802(Lcom/android/systemui/statusbar/phone/PanelViewController;F)F

    .line 1185
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1702(Lcom/android/systemui/statusbar/phone/PanelViewController;F)F

    goto/16 :goto_1

    .line 1189
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p1

    if-ne p1, v5, :cond_e

    .line 1190
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p1, v5}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1002(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    .line 1191
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2700(Lcom/android/systemui/statusbar/phone/PanelViewController;)Landroid/view/VelocityTracker;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_1

    .line 1195
    :cond_5
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1700(Lcom/android/systemui/statusbar/phone/PanelViewController;)F

    move-result v4

    sub-float v4, v0, v4

    .line 1196
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v6, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2600(Lcom/android/systemui/statusbar/phone/PanelViewController;Landroid/view/MotionEvent;)V

    if-nez v3, :cond_6

    .line 1197
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1900(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1200(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1198
    :cond_6
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 1199
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {v6, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getTouchSlop(Landroid/view/MotionEvent;)F

    move-result p1

    neg-float v6, p1

    cmpg-float v4, v4, v6

    if-ltz v4, :cond_7

    .line 1200
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1200(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result v4

    if-eqz v4, :cond_e

    cmpl-float p1, v3, p1

    if-lez p1, :cond_e

    :cond_7
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    .line 1201
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1800(Lcom/android/systemui/statusbar/phone/PanelViewController;)F

    move-result p1

    sub-float p1, v2, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, v3, p1

    if-lez p1, :cond_e

    .line 1202
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->cancelHeightAnimator()V

    .line 1203
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedHeight:F

    invoke-virtual {p0, v2, v0, v5, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->startExpandMotion(FFZF)V

    return v5

    .line 1210
    :cond_8
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2700(Lcom/android/systemui/statusbar/phone/PanelViewController;)Landroid/view/VelocityTracker;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_1

    .line 1154
    :cond_9
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->userActivity()V

    .line 1155
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1300(Lcom/android/systemui/statusbar/phone/PanelViewController;)Landroid/animation/ValueAnimator;

    move-result-object v4

    if-eqz v4, :cond_a

    move v4, v5

    goto :goto_0

    :cond_a
    move v4, v1

    :goto_0
    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1202(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    .line 1156
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1402(Lcom/android/systemui/statusbar/phone/PanelViewController;F)F

    .line 1157
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, v3, Lcom/android/systemui/statusbar/phone/PanelViewController;->mDownTime:J

    .line 1158
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1200(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1500(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHintAnimationRunning:Z

    if-eqz v3, :cond_c

    :cond_b
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    .line 1159
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$000(Lcom/android/systemui/statusbar/phone/PanelViewController;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 1160
    :cond_c
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->cancelHeightAnimator()V

    .line 1161
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->cancelPeek()V

    .line 1162
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p0, v5}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1602(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    return v5

    .line 1165
    :cond_d
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v3, v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1702(Lcom/android/systemui/statusbar/phone/PanelViewController;F)F

    .line 1166
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v3, v2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1802(Lcom/android/systemui/statusbar/phone/PanelViewController;F)F

    .line 1167
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {v3, v2, v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isInContentBounds(FF)Z

    move-result v0

    xor-int/2addr v0, v5

    invoke-static {v3, v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1902(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    .line 1168
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTouchSlopExceededBeforeDown:Z

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1602(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    .line 1169
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2002(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    .line 1170
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1002(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    .line 1171
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result v2

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2102(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    .line 1172
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2202(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    .line 1173
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2302(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    .line 1174
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2402(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    .line 1175
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2502(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    .line 1176
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2600(Lcom/android/systemui/statusbar/phone/PanelViewController;Landroid/view/MotionEvent;)V

    :cond_e
    :goto_1
    return v1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1218
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$500(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_22

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$900(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result p1

    const/4 v1, 0x3

    if-eqz p1, :cond_0

    .line 1219
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v1, :cond_22

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1000(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1220
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-eqz p1, :cond_1

    goto/16 :goto_8

    .line 1225
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$800(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result p1

    const/4 v2, 0x1

    if-nez p1, :cond_3

    .line 1226
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTracking:Z

    if-eqz p1, :cond_2

    .line 1228
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->onTrackingStopped(Z)V

    :cond_2
    return v0

    .line 1234
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result p1

    if-eqz p1, :cond_5

    const/16 p1, 0x2002

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1235
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v2, :cond_4

    .line 1236
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->expand(Z)V

    :cond_4
    return v2

    .line 1250
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1100(Lcom/android/systemui/statusbar/phone/PanelViewController;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p1

    if-gez p1, :cond_6

    .line 1253
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    invoke-static {p1, v3}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1102(Lcom/android/systemui/statusbar/phone/PanelViewController;I)I

    move p1, v0

    .line 1255
    :cond_6
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 1256
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    .line 1258
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    if-nez v4, :cond_9

    .line 1259
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/PanelViewController;->shouldGestureWaitForTouchSlop()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2802(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    .line 1260
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {v5, v3, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->shouldGestureIgnoreXTouchSlop(FF)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_0

    :cond_7
    move v5, v0

    goto :goto_1

    :cond_8
    :goto_0
    move v5, v2

    :goto_1
    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2902(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    .line 1263
    :cond_9
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_18

    if-eq v4, v2, :cond_16

    const/4 v6, 0x2

    if-eq v4, v6, :cond_d

    if-eq v4, v1, :cond_16

    const/4 v1, 0x5

    if-eq v4, v1, :cond_c

    const/4 p1, 0x6

    if-eq v4, p1, :cond_a

    goto/16 :goto_7

    .line 1294
    :cond_a
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    .line 1295
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1100(Lcom/android/systemui/statusbar/phone/PanelViewController;)I

    move-result v1

    if-ne v1, p1, :cond_20

    .line 1297
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    if-eq v1, p1, :cond_b

    move p1, v0

    goto :goto_2

    :cond_b
    move p1, v2

    .line 1298
    :goto_2
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    .line 1299
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 1300
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    invoke-static {v4, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1102(Lcom/android/systemui/statusbar/phone/PanelViewController;I)I

    .line 1301
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p1, v2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$3202(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    .line 1302
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget p2, p1, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedHeight:F

    invoke-virtual {p1, v3, v1, v2, p2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->startExpandMotion(FFZF)V

    .line 1303
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$3202(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    goto/16 :goto_7

    .line 1307
    :cond_c
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v1

    if-ne v1, v2, :cond_20

    .line 1308
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1002(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    .line 1309
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p0, p2, v3, p1, v2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$3300(Lcom/android/systemui/statusbar/phone/PanelViewController;Landroid/view/MotionEvent;FFZ)V

    return v0

    .line 1314
    :cond_d
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v1, p2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2600(Lcom/android/systemui/statusbar/phone/PanelViewController;Landroid/view/MotionEvent;)V

    .line 1315
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1700(Lcom/android/systemui/statusbar/phone/PanelViewController;)F

    move-result v1

    sub-float v1, p1, v1

    .line 1319
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {v6, p2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getTouchSlop(Landroid/view/MotionEvent;)F

    move-result p2

    cmpl-float p2, v4, p2

    if-lez p2, :cond_10

    .line 1320
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1800(Lcom/android/systemui/statusbar/phone/PanelViewController;)F

    move-result v4

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float p2, p2, v4

    if-gtz p2, :cond_e

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    .line 1321
    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2900(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result p2

    if-eqz p2, :cond_10

    .line 1322
    :cond_e
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p2, v2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1602(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    .line 1323
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2800(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result p2

    if-eqz p2, :cond_10

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget-boolean v4, p2, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTracking:Z

    if-nez v4, :cond_10

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2200(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result p2

    if-nez p2, :cond_10

    .line 1324
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2000(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result p2

    if-nez p2, :cond_f

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$3400(Lcom/android/systemui/statusbar/phone/PanelViewController;)F

    move-result p2

    cmpl-float p2, p2, v5

    if-eqz p2, :cond_f

    .line 1325
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget v1, p2, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedHeight:F

    invoke-virtual {p2, v3, p1, v0, v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->startExpandMotion(FFZF)V

    move v1, v5

    .line 1328
    :cond_f
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->cancelHeightAnimator()V

    .line 1329
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->onTrackingStarted()V

    .line 1332
    :cond_10
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$3400(Lcom/android/systemui/statusbar/phone/PanelViewController;)F

    move-result p2

    add-float/2addr p2, v1

    invoke-static {v5, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 1333
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$3500(Lcom/android/systemui/statusbar/phone/PanelViewController;)F

    move-result v4

    cmpl-float v4, p2, v4

    if-lez v4, :cond_12

    .line 1334
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$000(Lcom/android/systemui/statusbar/phone/PanelViewController;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    if-eqz v4, :cond_11

    .line 1335
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$000(Lcom/android/systemui/statusbar/phone/PanelViewController;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1337
    :cond_11
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v4, v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2002(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    goto :goto_3

    .line 1338
    :cond_12
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$000(Lcom/android/systemui/statusbar/phone/PanelViewController;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    if-nez v4, :cond_13

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2000(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 1341
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget v5, v4, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedHeight:F

    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$3402(Lcom/android/systemui/statusbar/phone/PanelViewController;F)F

    .line 1342
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v4, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1702(Lcom/android/systemui/statusbar/phone/PanelViewController;F)F

    .line 1343
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget v5, v4, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedHeight:F

    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1402(Lcom/android/systemui/statusbar/phone/PanelViewController;F)F

    .line 1344
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v4, v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2002(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    .line 1346
    :cond_13
    :goto_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1400(Lcom/android/systemui/statusbar/phone/PanelViewController;)F

    move-result v4

    invoke-static {p2, v4}, Ljava/lang/Math;->max(FF)F

    move-result p2

    neg-float v1, v1

    .line 1347
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$3600(Lcom/android/systemui/statusbar/phone/PanelViewController;)I

    move-result v4

    int-to-float v4, v4

    cmpl-float v1, v1, v4

    if-ltz v1, :cond_14

    .line 1348
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2502(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    .line 1349
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v1, v3, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$3800(Lcom/android/systemui/statusbar/phone/PanelViewController;FF)Z

    move-result p1

    invoke-static {v1, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$3702(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    .line 1351
    :cond_14
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2000(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result p1

    if-nez p1, :cond_20

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2800(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTracking:Z

    if-eqz p1, :cond_20

    :cond_15
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    .line 1352
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isTrackingBlocked()Z

    move-result p1

    if-nez p1, :cond_20

    .line 1353
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->setExpandedHeightInternal(F)V

    goto/16 :goto_7

    .line 1359
    :cond_16
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v1, p2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2600(Lcom/android/systemui/statusbar/phone/PanelViewController;Landroid/view/MotionEvent;)V

    .line 1360
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v1, p2, v3, p1, v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$3300(Lcom/android/systemui/statusbar/phone/PanelViewController;Landroid/view/MotionEvent;FFZ)V

    .line 1361
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object p1

    .line 1362
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p2

    if-ne p2, v2, :cond_17

    .line 1363
    invoke-virtual {p1, v0}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    goto/16 :goto_7

    .line 1365
    :cond_17
    invoke-virtual {p1, v0}, Lcom/android/internal/jank/InteractionJankMonitor;->cancel(I)Z

    goto/16 :goto_7

    .line 1265
    :cond_18
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget v4, v1, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedHeight:F

    invoke-virtual {v1, v3, p1, v0, v4}, Lcom/android/systemui/statusbar/phone/PanelViewController;->startExpandMotion(FFZF)V

    .line 1266
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2002(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    .line 1267
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p1, v5}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1402(Lcom/android/systemui/statusbar/phone/PanelViewController;F)F

    .line 1268
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result v1

    invoke-static {p1, v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2102(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    .line 1269
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2302(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    .line 1270
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2402(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    .line 1271
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1002(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    .line 1272
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2100(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result v1

    invoke-static {p1, v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$3002(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    .line 1273
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p1, Lcom/android/systemui/statusbar/phone/PanelViewController;->mDownTime:J

    .line 1274
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2502(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    .line 1275
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    .line 1276
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result v1

    if-eqz v1, :cond_19

    move v1, v2

    goto :goto_4

    :cond_19
    move v1, v0

    .line 1275
    :goto_4
    invoke-static {p1, v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2202(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    .line 1277
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2600(Lcom/android/systemui/statusbar/phone/PanelViewController;Landroid/view/MotionEvent;)V

    .line 1278
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2800(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result p1

    if-eqz p1, :cond_1b

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1300(Lcom/android/systemui/statusbar/phone/PanelViewController;)Landroid/animation/ValueAnimator;

    move-result-object p1

    if-eqz p1, :cond_1a

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHintAnimationRunning:Z

    if-eqz p1, :cond_1b

    :cond_1a
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    .line 1279
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$000(Lcom/android/systemui/statusbar/phone/PanelViewController;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    if-eqz p1, :cond_1f

    .line 1280
    :cond_1b
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    .line 1281
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1300(Lcom/android/systemui/statusbar/phone/PanelViewController;)Landroid/animation/ValueAnimator;

    move-result-object v1

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHintAnimationRunning:Z

    if-eqz v1, :cond_1e

    :cond_1c
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    .line 1282
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$000(Lcom/android/systemui/statusbar/phone/PanelViewController;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    if-nez v1, :cond_1e

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTouchSlopExceededBeforeDown:Z

    if-eqz v1, :cond_1d

    goto :goto_5

    :cond_1d
    move v1, v0

    goto :goto_6

    :cond_1e
    :goto_5
    move v1, v2

    .line 1280
    :goto_6
    invoke-static {p1, v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1602(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    .line 1283
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->cancelHeightAnimator()V

    .line 1284
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->cancelPeek()V

    .line 1285
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->onTrackingStarted()V

    .line 1287
    :cond_1f
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result p1

    if-eqz p1, :cond_20

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result p1

    if-nez p1, :cond_20

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 1288
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isBouncerShowing()Z

    move-result p1

    if-nez p1, :cond_20

    .line 1289
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$3100(Lcom/android/systemui/statusbar/phone/PanelViewController;Landroid/view/MotionEvent;)V

    .line 1369
    :cond_20
    :goto_7
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2800(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result p1

    if-eqz p1, :cond_21

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTracking:Z

    if-eqz p0, :cond_22

    :cond_21
    move v0, v2

    :cond_22
    :goto_8
    return v0
.end method
