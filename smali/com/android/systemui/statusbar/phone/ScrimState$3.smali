.class final enum Lcom/android/systemui/statusbar/phone/ScrimState$3;
.super Lcom/android/systemui/statusbar/phone/ScrimState;
.source "ScrimState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/ScrimState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 94
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/ScrimState;-><init>(Ljava/lang/String;ILcom/android/systemui/statusbar/phone/ScrimState$1;)V

    return-void
.end method


# virtual methods
.method public prepare(Lcom/android/systemui/statusbar/phone/ScrimState;)V
    .locals 0

    .line 97
    iget p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mDefaultScrimAlpha:F

    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBehindAlpha:F

    const/4 p1, 0x0

    .line 98
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mFrontAlpha:F

    .line 99
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBubbleAlpha:F

    return-void
.end method