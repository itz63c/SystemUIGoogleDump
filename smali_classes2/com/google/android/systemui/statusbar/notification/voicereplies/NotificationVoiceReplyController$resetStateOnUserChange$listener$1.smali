.class public final Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$resetStateOnUserChange$listener$1;
.super Ljava/lang/Object;
.source "NotificationVoiceReplyManager.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$UserChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->resetStateOnUserChange(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $this_resetStateOnUserChange:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$resetStateOnUserChange$listener$1;->$this_resetStateOnUserChange:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserChanged(I)V
    .locals 0

    .line 229
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$resetStateOnUserChange$listener$1;->$this_resetStateOnUserChange:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;

    invoke-virtual {p0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;->getStateFlow()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p0

    sget-object p1, Lcom/google/android/systemui/statusbar/notification/voicereplies/NoCandidate;->INSTANCE:Lcom/google/android/systemui/statusbar/notification/voicereplies/NoCandidate;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method
