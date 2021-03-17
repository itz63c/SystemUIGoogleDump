.class final Lcom/google/android/systemui/statusbar/CallbacksHandler;
.super Ljava/lang/Object;
.source "NotificationVoiceReplyManagerService.kt"

# interfaces
.implements Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyHandler;


# instance fields
.field private final callbacks:Lcom/google/android/systemui/statusbar/INotificationVoiceReplyServiceCallbacks;

.field private final userId:I


# direct methods
.method public constructor <init>(ILcom/google/android/systemui/statusbar/INotificationVoiceReplyServiceCallbacks;)V
    .locals 1

    const-string v0, "callbacks"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput p1, p0, Lcom/google/android/systemui/statusbar/CallbacksHandler;->userId:I

    .line 168
    iput-object p2, p0, Lcom/google/android/systemui/statusbar/CallbacksHandler;->callbacks:Lcom/google/android/systemui/statusbar/INotificationVoiceReplyServiceCallbacks;

    return-void
.end method


# virtual methods
.method public getUserId()I
    .locals 0

    .line 167
    iget p0, p0, Lcom/google/android/systemui/statusbar/CallbacksHandler;->userId:I

    return p0
.end method

.method public onNotifAvailableForReplyChanged(Z)V
    .locals 0

    .line 171
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/CallbacksHandler;->callbacks:Lcom/google/android/systemui/statusbar/INotificationVoiceReplyServiceCallbacks;

    invoke-interface {p0, p1}, Lcom/google/android/systemui/statusbar/INotificationVoiceReplyServiceCallbacks;->onNotifAvailableForReplyChanged(Z)V

    return-void
.end method

.method public final onVoiceReplyError(I)V
    .locals 1

    .line 178
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/CallbacksHandler;->callbacks:Lcom/google/android/systemui/statusbar/INotificationVoiceReplyServiceCallbacks;

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Lcom/google/android/systemui/statusbar/INotificationVoiceReplyServiceCallbacks;->onVoiceReplyHandled(II)V

    return-void
.end method

.method public final onVoiceReplyStarted(I)V
    .locals 1

    .line 174
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/CallbacksHandler;->callbacks:Lcom/google/android/systemui/statusbar/INotificationVoiceReplyServiceCallbacks;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/google/android/systemui/statusbar/INotificationVoiceReplyServiceCallbacks;->onVoiceReplyHandled(II)V

    return-void
.end method
