.class public Lcom/google/android/systemui/dreamliner/DockAlignInfo;
.super Ljava/lang/Object;
.source "DockAlignInfo.java"


# instance fields
.field private final mAlignPct:I

.field private final mAlignState:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p1, p0, Lcom/google/android/systemui/dreamliner/DockAlignInfo;->mAlignState:I

    .line 43
    iput p2, p0, Lcom/google/android/systemui/dreamliner/DockAlignInfo;->mAlignPct:I

    return-void
.end method


# virtual methods
.method public getAlignPct()I
    .locals 0

    .line 51
    iget p0, p0, Lcom/google/android/systemui/dreamliner/DockAlignInfo;->mAlignPct:I

    return p0
.end method

.method public getAlignState()I
    .locals 0

    .line 47
    iget p0, p0, Lcom/google/android/systemui/dreamliner/DockAlignInfo;->mAlignState:I

    return p0
.end method
