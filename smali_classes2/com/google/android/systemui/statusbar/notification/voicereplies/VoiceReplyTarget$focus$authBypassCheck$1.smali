.class final Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$authBypassCheck$1;
.super Ljava/lang/Object;
.source "NotificationVoiceReplyManager.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/NotificationRemoteInputManager$AuthBypassPredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->focus(Lcom/google/android/systemui/statusbar/notification/voicereplies/AuthStateRef;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $authState:Lcom/google/android/systemui/statusbar/notification/voicereplies/AuthStateRef;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/statusbar/notification/voicereplies/AuthStateRef;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$authBypassCheck$1;->$authState:Lcom/google/android/systemui/statusbar/notification/voicereplies/AuthStateRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final canSendRemoteInputWithoutBouncer()Z
    .locals 1

    .line 582
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$authBypassCheck$1;->$authState:Lcom/google/android/systemui/statusbar/notification/voicereplies/AuthStateRef;

    invoke-virtual {p0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/AuthStateRef;->getValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
