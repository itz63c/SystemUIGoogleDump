.class public final Lcom/android/systemui/util/animation/MeasurementInput;
.super Ljava/lang/Object;
.source "MeasurementInput.kt"


# instance fields
.field private heightMeasureSpec:I

.field private widthMeasureSpec:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lcom/android/systemui/util/animation/MeasurementInput;->widthMeasureSpec:I

    .line 34
    iput p2, p0, Lcom/android/systemui/util/animation/MeasurementInput;->heightMeasureSpec:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/systemui/util/animation/MeasurementInput;IIILjava/lang/Object;)Lcom/android/systemui/util/animation/MeasurementInput;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Lcom/android/systemui/util/animation/MeasurementInput;->widthMeasureSpec:I

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget p2, p0, Lcom/android/systemui/util/animation/MeasurementInput;->heightMeasureSpec:I

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/util/animation/MeasurementInput;->copy(II)Lcom/android/systemui/util/animation/MeasurementInput;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(II)Lcom/android/systemui/util/animation/MeasurementInput;
    .locals 0

    new-instance p0, Lcom/android/systemui/util/animation/MeasurementInput;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/util/animation/MeasurementInput;-><init>(II)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/util/animation/MeasurementInput;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/util/animation/MeasurementInput;

    iget v1, p0, Lcom/android/systemui/util/animation/MeasurementInput;->widthMeasureSpec:I

    iget v3, p1, Lcom/android/systemui/util/animation/MeasurementInput;->widthMeasureSpec:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget p0, p0, Lcom/android/systemui/util/animation/MeasurementInput;->heightMeasureSpec:I

    iget p1, p1, Lcom/android/systemui/util/animation/MeasurementInput;->heightMeasureSpec:I

    if-eq p0, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getHeight()I
    .locals 0

    .line 42
    iget p0, p0, Lcom/android/systemui/util/animation/MeasurementInput;->heightMeasureSpec:I

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    return p0
.end method

.method public final getHeightMeasureSpec()I
    .locals 0

    .line 34
    iget p0, p0, Lcom/android/systemui/util/animation/MeasurementInput;->heightMeasureSpec:I

    return p0
.end method

.method public final getWidth()I
    .locals 0

    .line 38
    iget p0, p0, Lcom/android/systemui/util/animation/MeasurementInput;->widthMeasureSpec:I

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    return p0
.end method

.method public final getWidthMeasureSpec()I
    .locals 0

    .line 33
    iget p0, p0, Lcom/android/systemui/util/animation/MeasurementInput;->widthMeasureSpec:I

    return p0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/util/animation/MeasurementInput;->widthMeasureSpec:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/android/systemui/util/animation/MeasurementInput;->heightMeasureSpec:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final setWidthMeasureSpec(I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/android/systemui/util/animation/MeasurementInput;->widthMeasureSpec:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MeasurementInput(widthMeasureSpec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/util/animation/MeasurementInput;->widthMeasureSpec:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", heightMeasureSpec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/util/animation/MeasurementInput;->heightMeasureSpec:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
