.class Lcom/android/systemui/statusbar/NotificationGroupingUtil$LeftIconApplicator;
.super Ljava/lang/Object;
.source "NotificationGroupingUtil.java"

# interfaces
.implements Lcom/android/systemui/statusbar/NotificationGroupingUtil$ResultApplicator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationGroupingUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LeftIconApplicator"
.end annotation


# static fields
.field public static final MARGIN_ADJUSTED_VIEWS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 431
    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/NotificationGroupingUtil$LeftIconApplicator;->MARGIN_ADJUSTED_VIEWS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x10203b3
        0x102034f
        0x10203b4
        0x10203b0
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/NotificationGroupingUtil$1;)V
    .locals 0

    .line 429
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationGroupingUtil$LeftIconApplicator;-><init>()V

    return-void
.end method


# virtual methods
.method adjustMargins(ZLandroid/view/View;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const p0, 0x10204d2

    goto :goto_0

    :cond_1
    const p0, 0x10204d1

    .line 461
    :goto_0
    invoke-virtual {p2, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_2

    return-void

    .line 467
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 468
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0, p1}, Landroid/util/TypedValue;->complexToDimensionPixelOffset(ILandroid/util/DisplayMetrics;)I

    move-result p0

    .line 469
    instance-of p1, p2, Landroid/view/NotificationHeaderView;

    if-eqz p1, :cond_3

    .line 470
    check-cast p2, Landroid/view/NotificationHeaderView;

    invoke-virtual {p2, p0}, Landroid/view/NotificationHeaderView;->setTopLineExtraMarginEnd(I)V

    goto :goto_1

    .line 472
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 473
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_4

    .line 474
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 475
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public apply(Landroid/view/View;Landroid/view/View;ZZ)V
    .locals 4

    const p1, 0x1020445

    .line 439
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const p4, 0x102034c

    .line 440
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/ImageView;

    if-eqz p1, :cond_5

    if-nez p4, :cond_0

    goto :goto_3

    .line 444
    :cond_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p3, :cond_2

    move v3, v1

    goto :goto_0

    :cond_2
    move v3, v2

    .line 448
    :goto_0
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p3, :cond_3

    move v1, v2

    .line 449
    :cond_3
    invoke-virtual {p4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    .line 450
    :goto_1
    invoke-virtual {p4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 452
    sget-object p1, Lcom/android/systemui/statusbar/NotificationGroupingUtil$LeftIconApplicator;->MARGIN_ADJUSTED_VIEWS:[I

    array-length p4, p1

    :goto_2
    if-ge v2, p4, :cond_5

    aget v0, p1, v2

    xor-int/lit8 v1, p3, 0x1

    .line 453
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/NotificationGroupingUtil$LeftIconApplicator;->adjustMargins(ZLandroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    return-void
.end method
