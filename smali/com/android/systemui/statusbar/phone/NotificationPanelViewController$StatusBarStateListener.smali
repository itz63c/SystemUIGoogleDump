.class Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;
.super Ljava/lang/Object;
.source "NotificationPanelViewController.java"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatusBarStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 3899
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;)V
    .locals 0

    .line 3899
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    return-void
.end method


# virtual methods
.method public onDozeAmountChanged(FF)V
    .locals 1

    .line 3970
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$6902(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;F)F

    .line 3971
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p2, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$8102(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;F)F

    .line 3972
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$10200(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/keyguard/KeyguardStatusViewController;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$6900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/keyguard/KeyguardStatusViewController;->setDarkAmount(F)V

    .line 3973
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object p2, p1, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$6900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)F

    move-result p1

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setDarkAmount(F)V

    .line 3974
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$11000(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    return-void
.end method

.method public onStateChanged(I)V
    .locals 10

    .line 3902
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->goingToFullShade()Z

    move-result v0

    .line 3903
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isKeyguardFadingAway()Z

    move-result v1

    .line 3904
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$1500(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne p1, v3, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v4

    .line 3907
    :goto_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$10000(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/DozeParameters;->shouldControlUnlockedScreenOff()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isDozing()Z

    move-result v6

    if-eqz v6, :cond_1

    if-eqz v5, :cond_1

    .line 3910
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$10200(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/keyguard/KeyguardStatusViewController;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    .line 3911
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$10100(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    move-result-object v7

    iget v7, v7, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockX:I

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    .line 3912
    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$10100(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    move-result-object v8

    iget v8, v8, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockYFullyDozing:I

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    .line 3913
    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$10100(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    move-result-object v9

    iget v9, v9, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockScale:F

    .line 3910
    invoke-virtual {v6, v7, v8, v9, v4}, Lcom/android/keyguard/KeyguardStatusViewController;->updatePosition(IIFZ)V

    .line 3917
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$10200(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/keyguard/KeyguardStatusViewController;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    .line 3921
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$1500(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)I

    move-result v7

    .line 3917
    invoke-virtual {v6, p1, v1, v0, v7}, Lcom/android/keyguard/KeyguardStatusViewController;->setKeyguardStatusViewVisibility(IZZI)V

    .line 3922
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v1, p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$10300(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;IZ)V

    .line 3924
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v1, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$1502(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;I)I

    .line 3925
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v1, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$10402(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z

    const/4 v1, 0x2

    if-ne v2, v3, :cond_4

    if-nez v0, :cond_2

    if-ne p1, v1, :cond_4

    .line 3929
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$10500(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    .line 3932
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$1500(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)I

    move-result p1

    if-ne p1, v1, :cond_3

    const-wide/16 v0, 0x0

    goto :goto_1

    .line 3933
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->calculateGoingToFullShadeDelay()J

    move-result-wide v0

    .line 3934
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$3300(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/plugins/qs/QS;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Lcom/android/systemui/plugins/qs/QS;->animateHeaderSlidingIn(J)V

    goto :goto_3

    :cond_4
    if-ne v2, v1, :cond_5

    if-ne p1, v3, :cond_5

    .line 3937
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    const-wide/16 v0, 0x168

    invoke-static {p1, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$1800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;J)V

    .line 3938
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$3900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->resetScrollPosition()V

    .line 3942
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$6300(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 3943
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$3300(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/plugins/qs/QS;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/QS;->animateHeaderSlidingOut()V

    goto :goto_3

    .line 3946
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$3400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 3947
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$3400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    move-result-object p1

    if-eqz v5, :cond_6

    move v0, v4

    goto :goto_2

    :cond_6
    const/4 v0, 0x4

    :goto_2
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setVisibility(I)V

    if-eqz v5, :cond_7

    .line 3948
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$1500(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)I

    move-result p1

    if-eq v2, p1, :cond_7

    .line 3949
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$3300(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/plugins/qs/QS;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 3950
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$3300(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/plugins/qs/QS;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/QS;->hideImmediately()V

    .line 3954
    :cond_7
    :goto_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$3000(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    if-eqz v5, :cond_8

    .line 3956
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$10600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)V

    .line 3959
    :cond_8
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$10700(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)V

    .line 3962
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$3100(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    .line 3963
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$10800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    .line 3964
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$10900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    .line 3965
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$7700(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    return-void
.end method
