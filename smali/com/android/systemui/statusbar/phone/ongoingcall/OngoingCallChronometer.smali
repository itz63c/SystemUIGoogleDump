.class public final Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallChronometer;
.super Landroid/widget/Chronometer;
.source "OngoingCallChronometer.kt"


# instance fields
.field private minimumTextWidth:I

.field private shouldHideText:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallChronometer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallChronometer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Chronometer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 41
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallChronometer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2

    .line 64
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallChronometer;->shouldHideText:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0, v1, v1}, Landroid/widget/Chronometer;->setMeasuredDimension(II)V

    return-void

    .line 71
    :cond_0
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 70
    invoke-super {p0, v0, p2}, Landroid/widget/Chronometer;->onMeasure(II)V

    .line 73
    invoke-virtual {p0}, Landroid/widget/Chronometer;->getMeasuredWidth()I

    move-result v0

    .line 76
    invoke-static {v0, p1}, Landroid/widget/Chronometer;->resolveSize(II)I

    move-result p1

    if-le v0, p1, :cond_1

    const/4 p1, 0x1

    .line 79
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallChronometer;->shouldHideText:Z

    const/16 p1, 0x8

    .line 82
    invoke-virtual {p0, p1}, Landroid/widget/Chronometer;->setVisibility(I)V

    .line 83
    invoke-virtual {p0, v1, v1}, Landroid/widget/Chronometer;->setMeasuredDimension(II)V

    goto :goto_0

    .line 87
    :cond_1
    iget p1, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallChronometer;->minimumTextWidth:I

    invoke-static {v0, p1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallChronometer;->minimumTextWidth:I

    .line 88
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/Chronometer;->setMeasuredDimension(II)V

    :goto_0
    return-void
.end method

.method public setBase(J)V
    .locals 1

    const/4 v0, 0x0

    .line 57
    iput v0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallChronometer;->minimumTextWidth:I

    .line 58
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallChronometer;->shouldHideText:Z

    .line 59
    invoke-virtual {p0, v0}, Landroid/widget/Chronometer;->setVisibility(I)V

    .line 60
    invoke-super {p0, p1, p2}, Landroid/widget/Chronometer;->setBase(J)V

    return-void
.end method
