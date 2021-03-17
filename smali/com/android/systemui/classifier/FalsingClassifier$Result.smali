.class Lcom/android/systemui/classifier/FalsingClassifier$Result;
.super Ljava/lang/Object;
.source "FalsingClassifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/classifier/FalsingClassifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Result"
.end annotation


# instance fields
.field private final mConfidence:D

.field private final mFalsed:Z

.field private final mReason:Ljava/lang/String;


# direct methods
.method private constructor <init>(ZDLjava/lang/String;)V
    .locals 0

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-boolean p1, p0, Lcom/android/systemui/classifier/FalsingClassifier$Result;->mFalsed:Z

    .line 178
    iput-wide p2, p0, Lcom/android/systemui/classifier/FalsingClassifier$Result;->mConfidence:D

    .line 179
    iput-object p4, p0, Lcom/android/systemui/classifier/FalsingClassifier$Result;->mReason:Ljava/lang/String;

    return-void
.end method

.method static falsed(DLjava/lang/String;)Lcom/android/systemui/classifier/FalsingClassifier$Result;
    .locals 2

    .line 198
    new-instance v0, Lcom/android/systemui/classifier/FalsingClassifier$Result;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/android/systemui/classifier/FalsingClassifier$Result;-><init>(ZDLjava/lang/String;)V

    return-object v0
.end method

.method static passed(D)Lcom/android/systemui/classifier/FalsingClassifier$Result;
    .locals 3

    .line 205
    new-instance v0, Lcom/android/systemui/classifier/FalsingClassifier$Result;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, p1, v2}, Lcom/android/systemui/classifier/FalsingClassifier$Result;-><init>(ZDLjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getConfidence()D
    .locals 2

    .line 187
    iget-wide v0, p0, Lcom/android/systemui/classifier/FalsingClassifier$Result;->mConfidence:D

    return-wide v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 0

    .line 191
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingClassifier$Result;->mReason:Ljava/lang/String;

    return-object p0
.end method

.method public isFalse()Z
    .locals 0

    .line 183
    iget-boolean p0, p0, Lcom/android/systemui/classifier/FalsingClassifier$Result;->mFalsed:Z

    return p0
.end method
