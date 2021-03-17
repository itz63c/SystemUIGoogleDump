.class public final Lcom/android/systemui/util/RoundedCornerProgressDrawable;
.super Landroid/graphics/drawable/DrawableWrapper;
.source "RoundedCornerProgressDrawable.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/util/RoundedCornerProgressDrawable$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/util/RoundedCornerProgressDrawable$Companion;


# instance fields
.field private clipPath:Landroid/graphics/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/util/RoundedCornerProgressDrawable$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/util/RoundedCornerProgressDrawable$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/util/RoundedCornerProgressDrawable;->Companion:Lcom/android/systemui/util/RoundedCornerProgressDrawable$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, v0}, Lcom/android/systemui/util/RoundedCornerProgressDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 49
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/RoundedCornerProgressDrawable;->clipPath:Landroid/graphics/Path;

    .line 52
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {p0, p1}, Lcom/android/systemui/util/RoundedCornerProgressDrawable;->setClipPath(Landroid/graphics/Rect;)V

    return-void
.end method

.method private final setClipPath(Landroid/graphics/Rect;)V
    .locals 9

    .line 91
    iget-object v0, p0, Lcom/android/systemui/util/RoundedCornerProgressDrawable;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 92
    iget-object v1, p0, Lcom/android/systemui/util/RoundedCornerProgressDrawable;->clipPath:Landroid/graphics/Path;

    .line 93
    iget p0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, p0

    .line 94
    iget p0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, p0

    .line 95
    iget p0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v4, p0

    .line 96
    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, p0

    .line 97
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    const/4 v0, 0x2

    int-to-float v0, v0

    div-float v6, p0, v0

    .line 98
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    div-float v7, p0, v0

    .line 99
    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 92
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method private final updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 2

    .line 79
    sget v0, Lcom/android/systemui/R$styleable;->RoundedCornerProgressDrawable_android_drawable:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 114
    iget-object v0, p0, Lcom/android/systemui/util/RoundedCornerProgressDrawable;->clipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 115
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->draw(Landroid/graphics/Canvas;)V

    .line 116
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 1

    const-string v0, "r"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parser"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    sget-object v0, Lcom/android/systemui/R$styleable;->RoundedCornerProgressDrawable:[I

    invoke-static {p1, p4, p3, v0}, Landroid/graphics/drawable/DrawableWrapper;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 64
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/DrawableWrapper;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    const-string p1, "a"

    .line 66
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/systemui/util/RoundedCornerProgressDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 67
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 70
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    .line 68
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-class p1, Lcom/android/systemui/util/RoundedCornerProgressDrawable;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string p2, " needs a drawable"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    const-string v0, "bounds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-direct {p0, p1}, Lcom/android/systemui/util/RoundedCornerProgressDrawable;->setClipPath(Landroid/graphics/Rect;)V

    .line 86
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 87
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getLevel()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/RoundedCornerProgressDrawable;->onLevelChange(I)Z

    return-void
.end method

.method public onLayoutDirectionChanged(I)Z
    .locals 1

    .line 74
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getLevel()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/RoundedCornerProgressDrawable;->onLevelChange(I)Z

    .line 75
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->onLayoutDirectionChanged(I)Z

    move-result p0

    return p0
.end method

.method protected onLevelChange(I)Z
    .locals 6

    .line 104
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 105
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    mul-int/2addr v1, p1

    div-int/lit16 v1, v1, 0x2710

    .line 107
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v2, v3

    .line 108
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v2, v4, v5, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 109
    :goto_1
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->onLevelChange(I)Z

    move-result p0

    return p0
.end method
