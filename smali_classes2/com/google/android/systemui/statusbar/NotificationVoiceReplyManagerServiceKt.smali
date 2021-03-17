.class public final Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerServiceKt;
.super Ljava/lang/Object;
.source "NotificationVoiceReplyManagerService.kt"


# static fields
.field private static final AGSA_CERTS:[[B

.field private static final DEBUG_DIGEST_GMSCORE:[B

.field private static final RELEASE_DIGEST_GMSCORE:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 184
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "1975b2f17177bc89a5dff31f9e64a6cae281a53dc1d1d59b1d147fe1c82afa00"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 185
    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    sput-object v0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerServiceKt;->DEBUG_DIGEST_GMSCORE:[B

    .line 187
    new-instance v1, Ljava/math/BigInteger;

    const-string v3, "f0fd6c5b410f25cb25c3b53346c8972fae30f8ee7411df910480ad6b2d60db83"

    invoke-direct {v1, v3, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 188
    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    sput-object v1, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerServiceKt;->RELEASE_DIGEST_GMSCORE:[B

    const/4 v2, 0x2

    new-array v2, v2, [[B

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    .line 190
    sput-object v2, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerServiceKt;->AGSA_CERTS:[[B

    return-void
.end method

.method public static final synthetic access$getAGSA_CERTS$p$s-990638028()[[B
    .locals 1

    sget-object v0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerServiceKt;->AGSA_CERTS:[[B

    return-object v0
.end method

.method public static final synthetic access$onDeath(Landroid/os/IBinder;Lkotlin/jvm/functions/Function0;)Lcom/android/systemui/statusbar/notification/people/Subscription;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerServiceKt;->onDeath(Landroid/os/IBinder;Lkotlin/jvm/functions/Function0;)Lcom/android/systemui/statusbar/notification/people/Subscription;

    move-result-object p0

    return-object p0
.end method

.method private static final onDeath(Landroid/os/IBinder;Lkotlin/jvm/functions/Function0;)Lcom/android/systemui/statusbar/notification/people/Subscription;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/android/systemui/statusbar/notification/people/Subscription;"
        }
    .end annotation

    .line 149
    new-instance v0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerServiceKt$onDeath$recipient$1;

    invoke-direct {v0, p1}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerServiceKt$onDeath$recipient$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    const/4 p1, 0x0

    .line 150
    invoke-interface {p0, v0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 151
    new-instance p1, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerServiceKt$onDeath$1;

    invoke-direct {p1, p0, v0}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerServiceKt$onDeath$1;-><init>(Landroid/os/IBinder;Landroid/os/IBinder$DeathRecipient;)V

    invoke-static {p1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerKt;->Subscription(Lkotlin/jvm/functions/Function0;)Lcom/android/systemui/statusbar/notification/people/Subscription;

    move-result-object p0

    return-object p0
.end method
