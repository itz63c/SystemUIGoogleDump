.class Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockBitmapInfo;
.super Lcom/android/launcher3/icons/BitmapInfo;
.source "ClockDrawableWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/icons/ClockDrawableWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClockBitmapInfo"
.end annotation


# instance fields
.field public final animInfo:Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;

.field public final mFlattenedBackground:Landroid/graphics/Bitmap;

.field public final offset:I

.field public final scale:F


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;IFLcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 226
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/icons/BitmapInfo;-><init>(Landroid/graphics/Bitmap;I)V

    .line 227
    iput p3, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockBitmapInfo;->scale:F

    .line 228
    iput-object p4, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockBitmapInfo;->animInfo:Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;

    .line 229
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    int-to-float p1, p1

    const p2, 0x3c2aaaab

    mul-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    iput p1, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockBitmapInfo;->offset:I

    .line 230
    iput-object p5, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockBitmapInfo;->mFlattenedBackground:Landroid/graphics/Bitmap;

    return-void
.end method
