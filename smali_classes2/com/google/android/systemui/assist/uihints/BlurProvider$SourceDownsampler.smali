.class Lcom/google/android/systemui/assist/uihints/BlurProvider$SourceDownsampler;
.super Ljava/lang/Object;
.source "BlurProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/assist/uihints/BlurProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SourceDownsampler"
.end annotation


# instance fields
.field private final mDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/BlurProvider$SourceDownsampler;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public static getDownsampleScaleFactor(I)F
    .locals 1

    const/4 v0, 0x1

    shl-int p0, v0, p0

    int-to-float p0, p0

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p0

    return v0
.end method

.method private static getSideLength(FI)I
    .locals 0

    .line 198
    invoke-static {p1}, Lcom/google/android/systemui/assist/uihints/BlurProvider$SourceDownsampler;->getDownsampleScaleFactor(I)F

    move-result p1

    mul-float/2addr p0, p1

    const/high16 p1, 0x42480000    # 50.0f

    add-float/2addr p0, p1

    float-to-double p0, p0

    .line 200
    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    return p0
.end method


# virtual methods
.method public createBitmapBuffer(I)Landroid/graphics/Bitmap;
    .locals 1

    .line 184
    invoke-virtual {p0, p1}, Lcom/google/android/systemui/assist/uihints/BlurProvider$SourceDownsampler;->getDownsampledWidth(I)I

    move-result v0

    .line 185
    invoke-virtual {p0, p1}, Lcom/google/android/systemui/assist/uihints/BlurProvider$SourceDownsampler;->getDownsampledHeight(I)I

    move-result p0

    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 183
    invoke-static {v0, p0, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getDownsampledHeight(I)I
    .locals 0

    .line 194
    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/BlurProvider$SourceDownsampler;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    int-to-float p0, p0

    invoke-static {p0, p1}, Lcom/google/android/systemui/assist/uihints/BlurProvider$SourceDownsampler;->getSideLength(FI)I

    move-result p0

    return p0
.end method

.method public getDownsampledWidth(I)I
    .locals 0

    .line 190
    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/BlurProvider$SourceDownsampler;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    int-to-float p0, p0

    invoke-static {p0, p1}, Lcom/google/android/systemui/assist/uihints/BlurProvider$SourceDownsampler;->getSideLength(FI)I

    move-result p0

    return p0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/BlurProvider$SourceDownsampler;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public rasterize(Landroid/graphics/Bitmap;I)V
    .locals 4

    .line 160
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 167
    invoke-virtual {p0, p2}, Lcom/google/android/systemui/assist/uihints/BlurProvider$SourceDownsampler;->getDownsampledWidth(I)I

    move-result p1

    const/16 v1, 0x19

    add-int/2addr p1, v1

    .line 168
    invoke-virtual {p0, p2}, Lcom/google/android/systemui/assist/uihints/BlurProvider$SourceDownsampler;->getDownsampledHeight(I)I

    move-result v2

    add-int/2addr v2, v1

    const/4 v3, 0x0

    .line 165
    invoke-virtual {v0, v3, v3, p1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 169
    sget-object p1, Landroid/graphics/BlendMode;->CLEAR:Landroid/graphics/BlendMode;

    invoke-virtual {v0, v3, p1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/BlendMode;)V

    int-to-float p1, v1

    .line 172
    invoke-virtual {v0, p1, p1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 174
    invoke-static {p2}, Lcom/google/android/systemui/assist/uihints/BlurProvider$SourceDownsampler;->getDownsampleScaleFactor(I)F

    move-result p1

    .line 175
    invoke-virtual {v0, p1, p1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 177
    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/BlurProvider$SourceDownsampler;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 178
    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/BlurProvider$SourceDownsampler;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/BlurProvider$SourceDownsampler;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 177
    invoke-virtual {p1, v3, v3, p2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 179
    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/BlurProvider$SourceDownsampler;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method
