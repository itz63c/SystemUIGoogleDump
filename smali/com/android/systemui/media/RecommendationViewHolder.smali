.class public final Lcom/android/systemui/media/RecommendationViewHolder;
.super Ljava/lang/Object;
.source "RecommendationViewHolder.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/media/RecommendationViewHolder$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRecommendationViewHolder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RecommendationViewHolder.kt\ncom/android/systemui/media/RecommendationViewHolder\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,129:1\n1819#2,2:130\n1819#2,2:132\n*E\n*S KotlinDebug\n*F\n+ 1 RecommendationViewHolder.kt\ncom/android/systemui/media/RecommendationViewHolder\n*L\n73#1,2:130\n74#1,2:132\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/media/RecommendationViewHolder$Companion;

.field private static final controlsIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final gutsIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final cancel:Landroid/view/View;

.field private final cardIcon:Landroid/widget/ImageView;

.field private final cardText:Landroid/widget/TextView;

.field private final dismiss:Landroid/view/ViewGroup;

.field private final dismissLabel:Landroid/view/View;

.field private final mediaCoverItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaCoverItemsResIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaLogoItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaLogoItemsResIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final recommendations:Lcom/android/systemui/util/animation/TransitionLayout;

.field private final settings:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/android/systemui/media/RecommendationViewHolder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/media/RecommendationViewHolder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/media/RecommendationViewHolder;->Companion:Lcom/android/systemui/media/RecommendationViewHolder$Companion;

    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/Integer;

    .line 105
    sget v1, Lcom/android/systemui/R$id;->recommendation_card_icon:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 106
    sget v1, Lcom/android/systemui/R$id;->recommendation_card_text:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 107
    sget v1, Lcom/android/systemui/R$id;->media_cover1:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    .line 108
    sget v1, Lcom/android/systemui/R$id;->media_cover2:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v5, 0x3

    aput-object v1, v0, v5

    .line 109
    sget v1, Lcom/android/systemui/R$id;->media_cover3:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v6, 0x4

    aput-object v1, v0, v6

    .line 110
    sget v1, Lcom/android/systemui/R$id;->media_cover4:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v7, 0x5

    aput-object v1, v0, v7

    .line 111
    sget v1, Lcom/android/systemui/R$id;->media_cover5:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v7, 0x6

    aput-object v1, v0, v7

    .line 112
    sget v1, Lcom/android/systemui/R$id;->media_cover6:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v7, 0x7

    aput-object v1, v0, v7

    .line 113
    sget v1, Lcom/android/systemui/R$id;->media_logo1:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v7, 0x8

    aput-object v1, v0, v7

    .line 114
    sget v1, Lcom/android/systemui/R$id;->media_logo2:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v7, 0x9

    aput-object v1, v0, v7

    .line 115
    sget v1, Lcom/android/systemui/R$id;->media_logo3:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v7, 0xa

    aput-object v1, v0, v7

    .line 116
    sget v1, Lcom/android/systemui/R$id;->media_logo4:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v7, 0xb

    aput-object v1, v0, v7

    .line 117
    sget v1, Lcom/android/systemui/R$id;->media_logo5:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v7, 0xc

    aput-object v1, v0, v7

    .line 118
    sget v1, Lcom/android/systemui/R$id;->media_logo6:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v7, 0xd

    aput-object v1, v0, v7

    .line 104
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/media/RecommendationViewHolder;->controlsIds:Ljava/util/Set;

    new-array v0, v6, [Ljava/lang/Integer;

    .line 123
    sget v1, Lcom/android/systemui/R$id;->remove_text:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    .line 124
    sget v1, Lcom/android/systemui/R$id;->cancel:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    .line 125
    sget v1, Lcom/android/systemui/R$id;->dismiss:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    .line 126
    sget v1, Lcom/android/systemui/R$id;->settings:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    .line 122
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/media/RecommendationViewHolder;->gutsIds:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>(Landroid/view/View;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    move-object v2, v1

    check-cast v2, Lcom/android/systemui/util/animation/TransitionLayout;

    iput-object v2, v0, Lcom/android/systemui/media/RecommendationViewHolder;->recommendations:Lcom/android/systemui/util/animation/TransitionLayout;

    .line 34
    sget v3, Lcom/android/systemui/R$id;->recommendation_card_icon:I

    invoke-virtual {v1, v3}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/android/systemui/media/RecommendationViewHolder;->cardIcon:Landroid/widget/ImageView;

    .line 35
    sget v3, Lcom/android/systemui/R$id;->recommendation_card_text:I

    invoke-virtual {v1, v3}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/android/systemui/media/RecommendationViewHolder;->cardText:Landroid/widget/TextView;

    const/4 v3, 0x6

    new-array v4, v3, [Landroid/widget/ImageView;

    .line 37
    sget v5, Lcom/android/systemui/R$id;->media_cover1:I

    invoke-virtual {v1, v5}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v6

    const-string v7, "itemView.requireViewById(R.id.media_cover1)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/widget/ImageView;

    const/4 v7, 0x0

    aput-object v6, v4, v7

    .line 38
    sget v6, Lcom/android/systemui/R$id;->media_cover2:I

    invoke-virtual {v1, v6}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v8

    const-string v9, "itemView.requireViewById(R.id.media_cover2)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Landroid/widget/ImageView;

    const/4 v9, 0x1

    aput-object v8, v4, v9

    .line 39
    sget v8, Lcom/android/systemui/R$id;->media_cover3:I

    invoke-virtual {v1, v8}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v10

    const-string v11, "itemView.requireViewById(R.id.media_cover3)"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Landroid/widget/ImageView;

    const/4 v11, 0x2

    aput-object v10, v4, v11

    .line 40
    sget v10, Lcom/android/systemui/R$id;->media_cover4:I

    invoke-virtual {v1, v10}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v12

    const-string v13, "itemView.requireViewById(R.id.media_cover4)"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v12, Landroid/widget/ImageView;

    const/4 v13, 0x3

    aput-object v12, v4, v13

    .line 41
    sget v12, Lcom/android/systemui/R$id;->media_cover5:I

    invoke-virtual {v1, v12}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v14

    const-string v15, "itemView.requireViewById(R.id.media_cover5)"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v14, Landroid/widget/ImageView;

    const/4 v15, 0x4

    aput-object v14, v4, v15

    .line 42
    sget v14, Lcom/android/systemui/R$id;->media_cover6:I

    invoke-virtual {v1, v14}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v15

    const-string v13, "itemView.requireViewById(R.id.media_cover6)"

    invoke-static {v15, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v15, Landroid/widget/ImageView;

    const/4 v13, 0x5

    aput-object v15, v4, v13

    .line 36
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v0, Lcom/android/systemui/media/RecommendationViewHolder;->mediaCoverItems:Ljava/util/List;

    new-array v4, v3, [Landroid/widget/ImageView;

    .line 44
    sget v15, Lcom/android/systemui/R$id;->media_logo1:I

    invoke-virtual {v1, v15}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v13, "itemView.requireViewById(R.id.media_logo1)"

    invoke-static {v3, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v7

    .line 45
    sget v3, Lcom/android/systemui/R$id;->media_logo2:I

    invoke-virtual {v1, v3}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v13

    const-string v7, "itemView.requireViewById(R.id.media_logo2)"

    invoke-static {v13, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v13, Landroid/widget/ImageView;

    aput-object v13, v4, v9

    .line 46
    sget v7, Lcom/android/systemui/R$id;->media_logo3:I

    invoke-virtual {v1, v7}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v13

    const-string v9, "itemView.requireViewById(R.id.media_logo3)"

    invoke-static {v13, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v13, Landroid/widget/ImageView;

    aput-object v13, v4, v11

    .line 47
    sget v9, Lcom/android/systemui/R$id;->media_logo4:I

    invoke-virtual {v1, v9}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v13

    const-string v11, "itemView.requireViewById(R.id.media_logo4)"

    invoke-static {v13, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v13, Landroid/widget/ImageView;

    const/4 v11, 0x3

    aput-object v13, v4, v11

    .line 48
    sget v11, Lcom/android/systemui/R$id;->media_logo5:I

    invoke-virtual {v1, v11}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v13

    move-object/from16 v16, v2

    const-string v2, "itemView.requireViewById(R.id.media_logo5)"

    invoke-static {v13, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v13, Landroid/widget/ImageView;

    const/4 v2, 0x4

    aput-object v13, v4, v2

    .line 49
    sget v2, Lcom/android/systemui/R$id;->media_logo6:I

    invoke-virtual {v1, v2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v13

    const-string v1, "itemView.requireViewById(R.id.media_logo6)"

    invoke-static {v13, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v13, Landroid/widget/ImageView;

    const/4 v1, 0x5

    aput-object v13, v4, v1

    .line 43
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/media/RecommendationViewHolder;->mediaLogoItems:Ljava/util/List;

    const/4 v1, 0x6

    new-array v4, v1, [Ljava/lang/Integer;

    .line 51
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v5, 0x0

    aput-object v1, v4, v5

    .line 52
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v5, 0x1

    aput-object v1, v4, v5

    .line 53
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v5, 0x2

    aput-object v1, v4, v5

    .line 54
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v5, 0x3

    aput-object v1, v4, v5

    .line 55
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v5, 0x4

    aput-object v1, v4, v5

    .line 56
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v5, 0x5

    aput-object v1, v4, v5

    .line 50
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/media/RecommendationViewHolder;->mediaCoverItemsResIds:Ljava/util/List;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Integer;

    .line 58
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v1, v5

    .line 59
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    .line 60
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v1, v4

    .line 61
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v1, v4

    .line 62
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v1, v4

    .line 63
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 57
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/media/RecommendationViewHolder;->mediaLogoItemsResIds:Ljava/util/List;

    .line 66
    sget v1, Lcom/android/systemui/R$id;->cancel:I

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/media/RecommendationViewHolder;->cancel:Landroid/view/View;

    .line 67
    sget v1, Lcom/android/systemui/R$id;->dismiss:I

    invoke-virtual {v2, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, v0, Lcom/android/systemui/media/RecommendationViewHolder;->dismiss:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    .line 68
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/media/RecommendationViewHolder;->dismissLabel:Landroid/view/View;

    .line 69
    sget v1, Lcom/android/systemui/R$id;->settings:I

    invoke-virtual {v2, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/media/RecommendationViewHolder;->settings:Landroid/view/View;

    .line 72
    invoke-virtual/range {v16 .. v16}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type com.android.systemui.media.IlluminationDrawable"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lcom/android/systemui/media/IlluminationDrawable;

    .line 73
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/RecommendationViewHolder;->getMediaCoverItems()Ljava/util/List;

    move-result-object v2

    .line 1819
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 73
    invoke-virtual {v1, v3}, Lcom/android/systemui/media/IlluminationDrawable;->registerLightSource(Landroid/view/View;)V

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/RecommendationViewHolder;->getMediaLogoItems()Ljava/util/List;

    move-result-object v2

    .line 1819
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 74
    invoke-virtual {v1, v3}, Lcom/android/systemui/media/IlluminationDrawable;->registerLightSource(Landroid/view/View;)V

    goto :goto_1

    .line 75
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/RecommendationViewHolder;->getCancel()Landroid/view/View;

    move-result-object v2

    const-string v3, "cancel"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/media/IlluminationDrawable;->registerLightSource(Landroid/view/View;)V

    .line 76
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/RecommendationViewHolder;->getDismiss()Landroid/view/ViewGroup;

    move-result-object v2

    const-string v3, "dismiss"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/media/IlluminationDrawable;->registerLightSource(Landroid/view/View;)V

    .line 77
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/RecommendationViewHolder;->getDismissLabel()Landroid/view/View;

    move-result-object v2

    const-string v3, "dismissLabel"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/media/IlluminationDrawable;->registerLightSource(Landroid/view/View;)V

    .line 78
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/RecommendationViewHolder;->getSettings()Landroid/view/View;

    move-result-object v0

    const-string v2, "settings"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/android/systemui/media/IlluminationDrawable;->registerLightSource(Landroid/view/View;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/View;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/media/RecommendationViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$getControlsIds$cp()Ljava/util/Set;
    .locals 1

    .line 29
    sget-object v0, Lcom/android/systemui/media/RecommendationViewHolder;->controlsIds:Ljava/util/Set;

    return-object v0
.end method

.method public static final synthetic access$getGutsIds$cp()Ljava/util/Set;
    .locals 1

    .line 29
    sget-object v0, Lcom/android/systemui/media/RecommendationViewHolder;->gutsIds:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public final getCancel()Landroid/view/View;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/systemui/media/RecommendationViewHolder;->cancel:Landroid/view/View;

    return-object p0
.end method

.method public final getDismiss()Landroid/view/ViewGroup;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/systemui/media/RecommendationViewHolder;->dismiss:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public final getDismissLabel()Landroid/view/View;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/systemui/media/RecommendationViewHolder;->dismissLabel:Landroid/view/View;

    return-object p0
.end method

.method public final getMediaCoverItems()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object p0, p0, Lcom/android/systemui/media/RecommendationViewHolder;->mediaCoverItems:Ljava/util/List;

    return-object p0
.end method

.method public final getMediaCoverItemsResIds()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object p0, p0, Lcom/android/systemui/media/RecommendationViewHolder;->mediaCoverItemsResIds:Ljava/util/List;

    return-object p0
.end method

.method public final getMediaLogoItems()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object p0, p0, Lcom/android/systemui/media/RecommendationViewHolder;->mediaLogoItems:Ljava/util/List;

    return-object p0
.end method

.method public final getMediaLogoItemsResIds()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object p0, p0, Lcom/android/systemui/media/RecommendationViewHolder;->mediaLogoItemsResIds:Ljava/util/List;

    return-object p0
.end method

.method public final getRecommendations()Lcom/android/systemui/util/animation/TransitionLayout;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/android/systemui/media/RecommendationViewHolder;->recommendations:Lcom/android/systemui/util/animation/TransitionLayout;

    return-object p0
.end method

.method public final getSettings()Landroid/view/View;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/media/RecommendationViewHolder;->settings:Landroid/view/View;

    return-object p0
.end method
