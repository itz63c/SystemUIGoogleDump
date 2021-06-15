.class public final Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$setUpUidObserver$1;
.super Landroid/app/IUidObserver$Stub;
.source "OngoingCallController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->setUpUidObserver(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$OngoingCallInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $currentOngoingCallInfo:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$OngoingCallInfo;

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$OngoingCallInfo;Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$setUpUidObserver$1;->$currentOngoingCallInfo:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$OngoingCallInfo;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$setUpUidObserver$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;

    .line 192
    invoke-direct {p0}, Landroid/app/IUidObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onUidActive(I)V
    .locals 0

    return-void
.end method

.method public onUidCachedChanged(IZ)V
    .locals 0

    return-void
.end method

.method public onUidGone(IZ)V
    .locals 0

    return-void
.end method

.method public onUidIdle(IZ)V
    .locals 0

    return-void
.end method

.method public onUidStateChanged(IIJI)V
    .locals 0

    .line 195
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$setUpUidObserver$1;->$currentOngoingCallInfo:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$OngoingCallInfo;

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$OngoingCallInfo;->getUid()I

    move-result p3

    if-ne p1, p3, :cond_0

    .line 196
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$setUpUidObserver$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->access$isCallAppVisible$p(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;)Z

    move-result p1

    .line 197
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$setUpUidObserver$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;

    invoke-static {p3, p2}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->access$isProcessVisibleToUser(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;I)Z

    move-result p2

    invoke-static {p3, p2}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->access$setCallAppVisible$p(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;Z)V

    .line 198
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$setUpUidObserver$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->access$isCallAppVisible$p(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;)Z

    move-result p2

    if-eq p1, p2, :cond_0

    .line 201
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$setUpUidObserver$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->access$getMainExecutor$p(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;)Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$setUpUidObserver$1$onUidStateChanged$1;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$setUpUidObserver$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$setUpUidObserver$1$onUidStateChanged$1;-><init>(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
