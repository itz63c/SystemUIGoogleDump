.class public Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo$Builder;
.super Ljava/lang/Object;
.source "BcSmartspaceCardLoggingInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mCardinality:I

.field private mDisplaySurface:I

.field private mInstanceId:I

.field private mLoggingCardType:I

.field private mRank:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 61
    iput v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo$Builder;->mDisplaySurface:I

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo$Builder;)I
    .locals 0

    .line 56
    iget p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo$Builder;->mInstanceId:I

    return p0
.end method

.method static synthetic access$100(Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo$Builder;)I
    .locals 0

    .line 56
    iget p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo$Builder;->mLoggingCardType:I

    return p0
.end method

.method static synthetic access$200(Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo$Builder;)I
    .locals 0

    .line 56
    iget p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo$Builder;->mDisplaySurface:I

    return p0
.end method

.method static synthetic access$300(Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo$Builder;)I
    .locals 0

    .line 56
    iget p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo$Builder;->mRank:I

    return p0
.end method

.method static synthetic access$400(Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo$Builder;)I
    .locals 0

    .line 56
    iget p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo$Builder;->mCardinality:I

    return p0
.end method


# virtual methods
.method public build()Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo;
    .locals 2

    .line 110
    new-instance v0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo;-><init>(Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo$Builder;Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo$1;)V

    return-object v0
.end method

.method public setCardinality(I)Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo$Builder;
    .locals 0

    .line 102
    iput p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo$Builder;->mCardinality:I

    return-object p0
.end method

.method public setDisplaySurface(I)Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo$Builder;
    .locals 0

    .line 86
    iput p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo$Builder;->mDisplaySurface:I

    return-object p0
.end method

.method public setInstanceId(I)Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo$Builder;
    .locals 0

    .line 70
    iput p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo$Builder;->mInstanceId:I

    return-object p0
.end method

.method public setLoggingCardType(I)Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo$Builder;
    .locals 0

    .line 78
    iput p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo$Builder;->mLoggingCardType:I

    return-object p0
.end method

.method public setRank(I)Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo$Builder;
    .locals 0

    .line 94
    iput p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo$Builder;->mRank:I

    return-object p0
.end method