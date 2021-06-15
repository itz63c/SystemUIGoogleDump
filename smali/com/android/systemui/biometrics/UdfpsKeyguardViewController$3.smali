.class Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$3;
.super Ljava/lang/Object;
.source "UdfpsKeyguardViewController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$AlternateAuthInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;


# direct methods
.method constructor <init>(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;)V
    .locals 0

    .line 333
    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$3;->this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 0

    .line 387
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$3;->this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->getTag()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public hideAlternateAuthBouncer()Z
    .locals 1

    .line 341
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$3;->this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->access$000(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;Z)Z

    move-result p0

    return p0
.end method

.method public isAnimating()Z
    .locals 0

    .line 358
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$3;->this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;

    invoke-static {p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->access$1200(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->isAnimating()Z

    move-result p0

    return p0
.end method

.method public isShowingAlternateAuthBouncer()Z
    .locals 0

    .line 346
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$3;->this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;

    invoke-static {p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->access$900(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;)Z

    move-result p0

    return p0
.end method

.method public onBouncerVisibilityChanged()V
    .locals 2

    .line 381
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$3;->this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;

    invoke-static {v0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->access$1800(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->bouncerIsOrWillBeShowing()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->access$1702(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;Z)Z

    .line 382
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$3;->this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->updatePauseAuth()V

    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 369
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$3;->this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;

    invoke-static {p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->access$1400(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;)Lcom/android/systemui/biometrics/UdfpsController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/UdfpsController;->onTouch(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public requestUdfps(ZI)V
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$3;->this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;

    invoke-static {v0, p1}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->access$1002(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;Z)Z

    .line 352
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$3;->this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;

    invoke-static {v0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->access$1100(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->requestUdfps(ZI)V

    .line 353
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$3;->this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->updatePauseAuth()V

    return-void
.end method

.method public setBouncerExpansionChanged(F)V
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$3;->this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;

    invoke-static {v0, p1}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->access$1502(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;F)F

    .line 375
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$3;->this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;

    invoke-static {p1}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->access$1600(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;)V

    .line 376
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$3;->this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->updatePauseAuth()V

    return-void
.end method

.method public setQsExpanded(Z)V
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$3;->this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;

    invoke-static {v0, p1}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->access$1302(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;Z)Z

    .line 364
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$3;->this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->updatePauseAuth()V

    return-void
.end method

.method public showAlternateAuthBouncer()Z
    .locals 1

    .line 336
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$3;->this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->access$000(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;Z)Z

    move-result p0

    return p0
.end method
