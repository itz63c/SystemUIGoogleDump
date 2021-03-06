.class final Lcom/google/android/systemui/statusbar/notification/voicereplies/InSession;
.super Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyState;
.source "NotificationVoiceReplyManager.kt"


# instance fields
.field private final block:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Lcom/google/android/systemui/statusbar/notification/voicereplies/Session;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final initialContent:Ljava/lang/String;

.field private final target:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/google/android/systemui/statusbar/notification/voicereplies/Session;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;",
            ")V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "target"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 755
    invoke-direct {p0, v0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyState;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 752
    iput-object p1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/InSession;->initialContent:Ljava/lang/String;

    .line 753
    iput-object p2, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/InSession;->block:Lkotlin/jvm/functions/Function2;

    .line 754
    iput-object p3, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/InSession;->target:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 751
    :cond_0
    instance-of v1, p1, Lcom/google/android/systemui/statusbar/notification/voicereplies/InSession;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/systemui/statusbar/notification/voicereplies/InSession;

    iget-object v1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/InSession;->initialContent:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/systemui/statusbar/notification/voicereplies/InSession;->initialContent:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/InSession;->block:Lkotlin/jvm/functions/Function2;

    iget-object v3, p1, Lcom/google/android/systemui/statusbar/notification/voicereplies/InSession;->block:Lkotlin/jvm/functions/Function2;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/InSession;->target:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    iget-object p1, p1, Lcom/google/android/systemui/statusbar/notification/voicereplies/InSession;->target:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getBlock()Lkotlin/jvm/functions/Function2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Lcom/google/android/systemui/statusbar/notification/voicereplies/Session;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 753
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/InSession;->block:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method

.method public final getInitialContent()Ljava/lang/String;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/InSession;->initialContent:Ljava/lang/String;

    return-object p0
.end method

.method public final getTarget()Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;
    .locals 0

    .line 754
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/InSession;->target:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    .line 751
    iget-object v0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/InSession;->initialContent:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/InSession;->block:Lkotlin/jvm/functions/Function2;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/InSession;->target:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 751
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InSession(initialContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/InSession;->initialContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", block="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/InSession;->block:Lkotlin/jvm/functions/Function2;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/InSession;->target:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
