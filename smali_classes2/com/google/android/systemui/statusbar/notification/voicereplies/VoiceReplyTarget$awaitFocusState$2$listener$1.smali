.class public final Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$awaitFocusState$2$listener$1;
.super Ljava/lang/Object;
.source "NotificationVoiceReplyManager.kt"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->awaitFocusState(Lcom/android/systemui/statusbar/policy/RemoteInputView;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $expected:Z

.field final synthetic $k:Lkotlinx/coroutines/CancellableContinuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CancellableContinuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $this_awaitFocusState:Lcom/android/systemui/statusbar/policy/RemoteInputView;


# direct methods
.method constructor <init>(ZLcom/android/systemui/statusbar/policy/RemoteInputView;Lkotlinx/coroutines/CancellableContinuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/android/systemui/statusbar/policy/RemoteInputView;",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$awaitFocusState$2$listener$1;->$expected:Z

    iput-object p2, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$awaitFocusState$2$listener$1;->$this_awaitFocusState:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    iput-object p3, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$awaitFocusState$2$listener$1;->$k:Lkotlinx/coroutines/CancellableContinuation;

    .line 654
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 656
    iget-boolean p1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$awaitFocusState$2$listener$1;->$expected:Z

    if-ne p2, p1, :cond_0

    .line 657
    iget-object p1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$awaitFocusState$2$listener$1;->$this_awaitFocusState:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->removeOnEditTextFocusChangedListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 658
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$awaitFocusState$2$listener$1;->$k:Lkotlinx/coroutines/CancellableContinuation;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
