.class final Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$OngoingCallInfo;
.super Ljava/lang/Object;
.source "OngoingCallController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OngoingCallInfo"
.end annotation


# instance fields
.field private final callStartTime:J

.field private final intent:Landroid/content/Intent;

.field private final uid:I


# direct methods
.method public constructor <init>(JLandroid/content/Intent;I)V
    .locals 1

    const-string v0, "intent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    iput-wide p1, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$OngoingCallInfo;->callStartTime:J

    .line 229
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$OngoingCallInfo;->intent:Landroid/content/Intent;

    .line 230
    iput p4, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$OngoingCallInfo;->uid:I

    return-void
.end method


# virtual methods
.method public final getCallStartTime()J
    .locals 2

    .line 228
    iget-wide v0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$OngoingCallInfo;->callStartTime:J

    return-wide v0
.end method

.method public final getIntent()Landroid/content/Intent;
    .locals 0

    .line 229
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$OngoingCallInfo;->intent:Landroid/content/Intent;

    return-object p0
.end method

.method public final getUid()I
    .locals 0

    .line 230
    iget p0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$OngoingCallInfo;->uid:I

    return p0
.end method
