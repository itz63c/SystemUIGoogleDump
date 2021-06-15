.class Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;
.super Ljava/lang/Object;
.source "NotificationStackScrollLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AnimationEvent"
.end annotation


# static fields
.field static FILTERS:[Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

.field static LENGTHS:[I


# instance fields
.field final animationType:I

.field final eventStartTime:J

.field final filter:Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

.field headsUpFromBottom:Z

.field final length:J

.field final mChangingView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

.field viewAfterChangingView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x10

    new-array v1, v0, [Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 5253
    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    .line 5257
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateAlpha()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 5258
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 5259
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 5260
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 5261
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 5262
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->hasDelays()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    .line 5266
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateAlpha()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 5267
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 5268
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 5269
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 5270
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 5271
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->hasDelays()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    .line 5275
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 5276
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 5277
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 5278
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 5279
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->hasDelays()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    .line 5283
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 5284
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 5285
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 5286
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateDimmed()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 5287
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    .line 5291
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    .line 5295
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateDimmed()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    .line 5299
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateAlpha()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 5300
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 5301
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 5302
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 5303
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    .line 5307
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 5308
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 5309
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 5310
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateDimmed()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 5311
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 5312
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->hasDelays()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    .line 5316
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHideSensitive()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    const/16 v3, 0x8

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    .line 5320
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 5321
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 5322
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 5323
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    const/16 v3, 0x9

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    .line 5327
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateAlpha()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 5328
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 5329
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 5330
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 5331
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    const/16 v3, 0xa

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    .line 5335
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 5336
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 5337
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 5338
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    const/16 v3, 0xb

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    .line 5342
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 5343
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 5344
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 5345
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 5346
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->hasDelays()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    const/16 v3, 0xc

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    .line 5350
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 5351
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 5352
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 5353
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 5354
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->hasDelays()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    const/16 v3, 0xd

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    .line 5358
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 5359
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 5360
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 5361
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    const/16 v3, 0xe

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    .line 5365
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateAlpha()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 5366
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateDimmed()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 5367
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHideSensitive()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 5368
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 5369
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 5370
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 5371
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    const/16 v3, 0xf

    aput-object v2, v1, v3

    sput-object v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->FILTERS:[Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    new-array v0, v0, [I

    .line 5374
    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->LENGTHS:[I

    return-void

    :array_0
    .array-data 4
        0x1d0
        0x1d0
        0x168
        0x168
        0xdc
        0xdc
        0x168
        0x1c0
        0x168
        0x168
        0x168
        0x226
        0x12c
        0x12c
        0x168
        0x168
    .end array-data
.end method

.method constructor <init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)V
    .locals 2

    .line 5451
    sget-object v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->LENGTHS:[I

    aget v0, v0, p2

    int-to-long v0, v0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;IJ)V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;IJ)V
    .locals 7

    .line 5459
    sget-object v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->FILTERS:[Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    aget-object v6, v0, p2

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;IJLcom/android/systemui/statusbar/notification/stack/AnimationFilter;)V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;IJLcom/android/systemui/statusbar/notification/stack/AnimationFilter;)V
    .locals 2

    .line 5462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5463
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->eventStartTime:J

    .line 5464
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->mChangingView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 5465
    iput p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    .line 5466
    iput-wide p3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->length:J

    .line 5467
    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->filter:Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    return-void
.end method

.method static combineLength(Ljava/util/ArrayList;)J
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;",
            ">;)J"
        }
    .end annotation

    .line 5479
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 5481
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;

    .line 5482
    iget-wide v5, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->length:J

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 5483
    iget v5, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_0

    .line 5484
    iget-wide v0, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->length:J

    return-wide v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-wide v1
.end method
