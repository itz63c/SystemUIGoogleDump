.class public final Lcom/android/systemui/statusbar/events/PrivacyDotViewController$systemStatusAnimationCallback$1;
.super Ljava/lang/Object;
.source "PrivacyDotViewController.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/events/PrivacyDotViewController;-><init>(Ljava/util/concurrent/Executor;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/StatusBarLocationPublisher;Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/events/PrivacyDotViewController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/events/PrivacyDotViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController$systemStatusAnimationCallback$1;->this$0:Lcom/android/systemui/statusbar/events/PrivacyDotViewController;

    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHidePersistentDot()Landroid/animation/Animator;
    .locals 13

    .line 430
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController$systemStatusAnimationCallback$1;->this$0:Lcom/android/systemui/statusbar/events/PrivacyDotViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->access$getLock$p(Lcom/android/systemui/statusbar/events/PrivacyDotViewController;)Ljava/lang/Object;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController$systemStatusAnimationCallback$1;->this$0:Lcom/android/systemui/statusbar/events/PrivacyDotViewController;

    monitor-enter v0

    .line 431
    :try_start_0
    invoke-static {p0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->access$getNextViewState$p(Lcom/android/systemui/statusbar/events/PrivacyDotViewController;)Lcom/android/systemui/statusbar/events/ViewState;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x1fe

    const/4 v12, 0x0

    invoke-static/range {v1 .. v12}, Lcom/android/systemui/statusbar/events/ViewState;->copy$default(Lcom/android/systemui/statusbar/events/ViewState;ZZZIIIIILandroid/view/View;ILjava/lang/Object;)Lcom/android/systemui/statusbar/events/ViewState;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->access$setNextViewState(Lcom/android/systemui/statusbar/events/PrivacyDotViewController;Lcom/android/systemui/statusbar/events/ViewState;)V

    .line 432
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 430
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public onSystemStatusAnimationTransitionToPersistentDot()Landroid/animation/Animator;
    .locals 13

    .line 422
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController$systemStatusAnimationCallback$1;->this$0:Lcom/android/systemui/statusbar/events/PrivacyDotViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->access$getLock$p(Lcom/android/systemui/statusbar/events/PrivacyDotViewController;)Ljava/lang/Object;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController$systemStatusAnimationCallback$1;->this$0:Lcom/android/systemui/statusbar/events/PrivacyDotViewController;

    monitor-enter v0

    .line 423
    :try_start_0
    invoke-static {p0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->access$getNextViewState$p(Lcom/android/systemui/statusbar/events/PrivacyDotViewController;)Lcom/android/systemui/statusbar/events/ViewState;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x1fe

    const/4 v12, 0x0

    invoke-static/range {v1 .. v12}, Lcom/android/systemui/statusbar/events/ViewState;->copy$default(Lcom/android/systemui/statusbar/events/ViewState;ZZZIIIIILandroid/view/View;ILjava/lang/Object;)Lcom/android/systemui/statusbar/events/ViewState;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->access$setNextViewState(Lcom/android/systemui/statusbar/events/PrivacyDotViewController;Lcom/android/systemui/statusbar/events/ViewState;)V

    .line 424
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 422
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
