.class public final Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$expandShade$3$callback$1;
.super Ljava/lang/Object;
.source "NotificationVoiceReplyManager.kt"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->expandShade(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $k:Lkotlinx/coroutines/CancellableContinuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CancellableContinuation<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;Lkotlinx/coroutines/CancellableContinuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$expandShade$3$callback$1;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    iput-object p2, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$expandShade$3$callback$1;->$k:Lkotlinx/coroutines/CancellableContinuation;

    .line 669
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExpandedChanged(Z)V
    .locals 1

    .line 671
    iget-object v0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$expandShade$3$callback$1;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    invoke-static {v0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->access$getStatusBarStateController$p(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;)Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 672
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$expandShade$3$callback$1;->$k:Lkotlinx/coroutines/CancellableContinuation;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
