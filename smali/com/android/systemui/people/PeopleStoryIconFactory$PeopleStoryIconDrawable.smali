.class public Lcom/android/systemui/people/PeopleStoryIconFactory$PeopleStoryIconDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "PeopleStoryIconFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/people/PeopleStoryIconFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PeopleStoryIconDrawable"
.end annotation


# instance fields
.field private mAvatar:Landroid/graphics/drawable/Drawable;

.field private mBadgeIcon:Landroid/graphics/drawable/Drawable;

.field private mDensity:F

.field private mFullIconSize:F

.field private mIconSize:I

.field private mPriorityRingPaint:Landroid/graphics/Paint;

.field private mShowImportantRing:Z

.field private mShowStoryRing:Z

.field private mStoryPaint:Landroid/graphics/Paint;


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IIZFFIZ)V
    .locals 0

    .line 114
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 115
    iput-object p1, p0, Lcom/android/systemui/people/PeopleStoryIconFactory$PeopleStoryIconDrawable;->mAvatar:Landroid/graphics/drawable/Drawable;

    .line 116
    iput-object p2, p0, Lcom/android/systemui/people/PeopleStoryIconFactory$PeopleStoryIconDrawable;->mBadgeIcon:Landroid/graphics/drawable/Drawable;

    .line 117
    iput p3, p0, Lcom/android/systemui/people/PeopleStoryIconFactory$PeopleStoryIconDrawable;->mIconSize:I

    .line 118
    iput-boolean p5, p0, Lcom/android/systemui/people/PeopleStoryIconFactory$PeopleStoryIconDrawable;->mShowImportantRing:Z

    .line 119
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/people/PeopleStoryIconFactory$PeopleStoryIconDrawable;->mPriorityRingPaint:Landroid/graphics/Paint;

    .line 120
    sget-object p2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 121
    iget-object p1, p0, Lcom/android/systemui/people/PeopleStoryIconFactory$PeopleStoryIconDrawable;->mPriorityRingPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 122
    iput-boolean p9, p0, Lcom/android/systemui/people/PeopleStoryIconFactory$PeopleStoryIconDrawable;->mShowStoryRing:Z

    .line 123
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/people/PeopleStoryIconFactory$PeopleStoryIconDrawable;->mStoryPaint:Landroid/graphics/Paint;

    .line 124
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 125
    iget-object p1, p0, Lcom/android/systemui/people/PeopleStoryIconFactory$PeopleStoryIconDrawable;->mStoryPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p8}, Landroid/graphics/Paint;->setColor(I)V

    .line 126
    iput p6, p0, Lcom/android/systemui/people/PeopleStoryIconFactory$PeopleStoryIconDrawable;->mFullIconSize:F

    .line 127
    iput p7, p0, Lcom/android/systemui/people/PeopleStoryIconFactory$PeopleStoryIconDrawable;->mDensity:F

    return-void
.end method

.method private getRadius(II)I
    .locals 0

    sub-int/2addr p1, p2

    .line 201
    div-int/lit8 p1, p1, 0x2

    return p1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 142
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    .line 145
    iget v1, p0, Lcom/android/systemui/people/PeopleStoryIconFactory$PeopleStoryIconDrawable;->mFullIconSize:F

    div-float/2addr v0, v1

    .line 147
    iget v1, p0, Lcom/android/systemui/people/PeopleStoryIconFactory$PeopleStoryIconDrawable;->mDensity:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v3, v1, v2

    float-to-int v3, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 149
    iget-object v2, p0, Lcom/android/systemui/people/PeopleStoryIconFactory$PeopleStoryIconDrawable;->mPriorityRingPaint:Landroid/graphics/Paint;

    int-to-float v4, v1

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 150
    iget-object v2, p0, Lcom/android/systemui/people/PeopleStoryIconFactory$PeopleStoryIconDrawable;->mStoryPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 152
    iget v2, p0, Lcom/android/systemui/people/PeopleStoryIconFactory$PeopleStoryIconDrawable;->mFullIconSize:F

    mul-float/2addr v2, v0

    float-to-int v0, v2

    mul-int/lit8 v2, v3, 0x2

    sub-int v2, v0, v2

    .line 154
    iget-object v4, p0, Lcom/android/systemui/people/PeopleStoryIconFactory$PeopleStoryIconDrawable;->mAvatar:Landroid/graphics/drawable/Drawable;

    const-string v5, "PeopleStoryIconFactory"

    if-eqz v4, :cond_1

    add-int v4, v2, v3

    .line 157
    iget-boolean v6, p0, Lcom/android/systemui/people/PeopleStoryIconFactory$PeopleStoryIconDrawable;->mShowStoryRing:Z

    if-eqz v6, :cond_0

    .line 158
    div-int/lit8 v6, v0, 0x2

    int-to-float v6, v6

    .line 160
    invoke-direct {p0, v2, v1}, Lcom/android/systemui/people/PeopleStoryIconFactory$PeopleStoryIconDrawable;->getRadius(II)I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/android/systemui/people/PeopleStoryIconFactory$PeopleStoryIconDrawable;->mStoryPaint:Landroid/graphics/Paint;

    .line 159
    invoke-virtual {p1, v6, v6, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int v6, v1, v3

    add-int/2addr v3, v6

    sub-int/2addr v4, v6

    .line 165
    :cond_0
    iget-object v6, p0, Lcom/android/systemui/people/PeopleStoryIconFactory$PeopleStoryIconDrawable;->mAvatar:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v3, v3, v4, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 169
    iget-object v3, p0, Lcom/android/systemui/people/PeopleStoryIconFactory$PeopleStoryIconDrawable;->mAvatar:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_1
    const-string v3, "Null avatar icon"

    .line 171
    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/high16 v3, 0x42100000    # 36.0f

    .line 175
    iget v4, p0, Lcom/android/systemui/people/PeopleStoryIconFactory$PeopleStoryIconDrawable;->mDensity:F

    mul-float/2addr v4, v3

    float-to-int v3, v4

    int-to-double v6, v2

    const-wide v8, 0x4003333333333333L    # 2.4

    div-double/2addr v6, v8

    double-to-int v2, v6

    .line 177
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 178
    iget-object v3, p0, Lcom/android/systemui/people/PeopleStoryIconFactory$PeopleStoryIconDrawable;->mBadgeIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_3

    sub-int v3, v0, v2

    .line 181
    iget-boolean v4, p0, Lcom/android/systemui/people/PeopleStoryIconFactory$PeopleStoryIconDrawable;->mShowImportantRing:Z

    if-eqz v4, :cond_2

    .line 182
    div-int/lit8 v4, v2, 0x2

    add-int/2addr v4, v3

    int-to-float v4, v4

    .line 184
    invoke-direct {p0, v2, v1}, Lcom/android/systemui/people/PeopleStoryIconFactory$PeopleStoryIconDrawable;->getRadius(II)I

    move-result v2

    int-to-float v2, v2

    iget-object v5, p0, Lcom/android/systemui/people/PeopleStoryIconFactory$PeopleStoryIconDrawable;->mPriorityRingPaint:Landroid/graphics/Paint;

    .line 183
    invoke-virtual {p1, v4, v4, v2, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/2addr v3, v1

    sub-int/2addr v0, v1

    .line 189
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/people/PeopleStoryIconFactory$PeopleStoryIconDrawable;->mBadgeIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3, v3, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 194
    iget-object p0, p0, Lcom/android/systemui/people/PeopleStoryIconFactory$PeopleStoryIconDrawable;->mBadgeIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    :cond_3
    const-string p0, "Null badge icon"

    .line 196
    invoke-static {v5, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 0

    .line 137
    iget p0, p0, Lcom/android/systemui/people/PeopleStoryIconFactory$PeopleStoryIconDrawable;->mIconSize:I

    return p0
.end method

.method public getIntrinsicWidth()I
    .locals 0

    .line 132
    iget p0, p0, Lcom/android/systemui/people/PeopleStoryIconFactory$PeopleStoryIconDrawable;->mIconSize:I

    return p0
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
