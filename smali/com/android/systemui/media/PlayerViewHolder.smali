.class public final Lcom/android/systemui/media/PlayerViewHolder;
.super Ljava/lang/Object;
.source "PlayerViewHolder.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/media/PlayerViewHolder$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/media/PlayerViewHolder$Companion;

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
.field private final action0:Landroid/widget/ImageButton;

.field private final action1:Landroid/widget/ImageButton;

.field private final action2:Landroid/widget/ImageButton;

.field private final action3:Landroid/widget/ImageButton;

.field private final action4:Landroid/widget/ImageButton;

.field private final albumView:Landroid/widget/ImageView;

.field private final appIcon:Landroid/widget/ImageView;

.field private final artistText:Landroid/widget/TextView;

.field private final cancel:Landroid/view/View;

.field private final dismiss:Landroid/view/ViewGroup;

.field private final dismissLabel:Landroid/view/View;

.field private final elapsedTimeView:Landroid/widget/TextView;

.field private final player:Lcom/android/systemui/util/animation/TransitionLayout;

.field private final progressTimes:Landroid/view/ViewGroup;

.field private final seamless:Landroid/view/ViewGroup;

.field private final seamlessFallback:Landroid/widget/ImageView;

.field private final seamlessIcon:Landroid/widget/ImageView;

.field private final seamlessText:Landroid/widget/TextView;

.field private final seekBar:Landroid/widget/SeekBar;

.field private final settings:Landroid/view/View;

.field private final settingsText:Landroid/widget/TextView;

.field private final titleText:Landroid/widget/TextView;

.field private final totalTimeView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/android/systemui/media/PlayerViewHolder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/media/PlayerViewHolder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/media/PlayerViewHolder;->Companion:Lcom/android/systemui/media/PlayerViewHolder$Companion;

    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/Integer;

    .line 116
    sget v1, Lcom/android/systemui/R$id;->icon:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 117
    sget v2, Lcom/android/systemui/R$id;->app_name:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v0, v4

    .line 118
    sget v2, Lcom/android/systemui/R$id;->album_art:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v0, v5

    .line 119
    sget v2, Lcom/android/systemui/R$id;->header_title:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v0, v6

    .line 120
    sget v2, Lcom/android/systemui/R$id;->header_artist:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v7, 0x4

    aput-object v2, v0, v7

    .line 121
    sget v2, Lcom/android/systemui/R$id;->media_seamless:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v8, 0x5

    aput-object v2, v0, v8

    .line 122
    sget v2, Lcom/android/systemui/R$id;->media_seamless_fallback:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v8, 0x6

    aput-object v2, v0, v8

    .line 123
    sget v2, Lcom/android/systemui/R$id;->notification_media_progress_time:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v8, 0x7

    aput-object v2, v0, v8

    .line 124
    sget v2, Lcom/android/systemui/R$id;->media_progress_bar:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v8, 0x8

    aput-object v2, v0, v8

    .line 125
    sget v2, Lcom/android/systemui/R$id;->action0:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v8, 0x9

    aput-object v2, v0, v8

    .line 126
    sget v2, Lcom/android/systemui/R$id;->action1:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v8, 0xa

    aput-object v2, v0, v8

    .line 127
    sget v2, Lcom/android/systemui/R$id;->action2:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v8, 0xb

    aput-object v2, v0, v8

    .line 128
    sget v2, Lcom/android/systemui/R$id;->action3:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v8, 0xc

    aput-object v2, v0, v8

    .line 129
    sget v2, Lcom/android/systemui/R$id;->action4:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v8, 0xd

    aput-object v2, v0, v8

    .line 130
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 115
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/media/PlayerViewHolder;->controlsIds:Ljava/util/Set;

    new-array v0, v7, [Ljava/lang/Integer;

    .line 133
    sget v1, Lcom/android/systemui/R$id;->remove_text:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    .line 134
    sget v1, Lcom/android/systemui/R$id;->cancel:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    .line 135
    sget v1, Lcom/android/systemui/R$id;->dismiss:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    .line 136
    sget v1, Lcom/android/systemui/R$id;->settings:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    .line 132
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/media/PlayerViewHolder;->gutsIds:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>(Landroid/view/View;)V
    .locals 3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/util/animation/TransitionLayout;

    iput-object v0, p0, Lcom/android/systemui/media/PlayerViewHolder;->player:Lcom/android/systemui/util/animation/TransitionLayout;

    .line 37
    sget v1, Lcom/android/systemui/R$id;->icon:I

    invoke-virtual {p1, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/media/PlayerViewHolder;->appIcon:Landroid/widget/ImageView;

    .line 38
    sget v1, Lcom/android/systemui/R$id;->album_art:I

    invoke-virtual {p1, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/media/PlayerViewHolder;->albumView:Landroid/widget/ImageView;

    .line 39
    sget v1, Lcom/android/systemui/R$id;->header_title:I

    invoke-virtual {p1, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/media/PlayerViewHolder;->titleText:Landroid/widget/TextView;

    .line 40
    sget v1, Lcom/android/systemui/R$id;->header_artist:I

    invoke-virtual {p1, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/media/PlayerViewHolder;->artistText:Landroid/widget/TextView;

    .line 43
    sget v1, Lcom/android/systemui/R$id;->media_seamless:I

    invoke-virtual {p1, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/media/PlayerViewHolder;->seamless:Landroid/view/ViewGroup;

    .line 44
    sget v1, Lcom/android/systemui/R$id;->media_seamless_image:I

    invoke-virtual {p1, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/media/PlayerViewHolder;->seamlessIcon:Landroid/widget/ImageView;

    .line 45
    sget v1, Lcom/android/systemui/R$id;->media_seamless_text:I

    invoke-virtual {p1, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/media/PlayerViewHolder;->seamlessText:Landroid/widget/TextView;

    .line 46
    sget v1, Lcom/android/systemui/R$id;->media_seamless_fallback:I

    invoke-virtual {p1, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/media/PlayerViewHolder;->seamlessFallback:Landroid/widget/ImageView;

    .line 49
    sget v1, Lcom/android/systemui/R$id;->media_progress_bar:I

    invoke-virtual {p1, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/android/systemui/media/PlayerViewHolder;->seekBar:Landroid/widget/SeekBar;

    .line 50
    sget v1, Lcom/android/systemui/R$id;->notification_media_progress_time:I

    invoke-virtual {p1, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/media/PlayerViewHolder;->progressTimes:Landroid/view/ViewGroup;

    .line 51
    sget v1, Lcom/android/systemui/R$id;->media_elapsed_time:I

    invoke-virtual {p1, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/media/PlayerViewHolder;->elapsedTimeView:Landroid/widget/TextView;

    .line 52
    sget v1, Lcom/android/systemui/R$id;->media_total_time:I

    invoke-virtual {p1, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/media/PlayerViewHolder;->totalTimeView:Landroid/widget/TextView;

    .line 55
    sget v1, Lcom/android/systemui/R$id;->action0:I

    invoke-virtual {p1, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/systemui/media/PlayerViewHolder;->action0:Landroid/widget/ImageButton;

    .line 56
    sget v1, Lcom/android/systemui/R$id;->action1:I

    invoke-virtual {p1, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/systemui/media/PlayerViewHolder;->action1:Landroid/widget/ImageButton;

    .line 57
    sget v1, Lcom/android/systemui/R$id;->action2:I

    invoke-virtual {p1, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/systemui/media/PlayerViewHolder;->action2:Landroid/widget/ImageButton;

    .line 58
    sget v1, Lcom/android/systemui/R$id;->action3:I

    invoke-virtual {p1, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/systemui/media/PlayerViewHolder;->action3:Landroid/widget/ImageButton;

    .line 59
    sget v1, Lcom/android/systemui/R$id;->action4:I

    invoke-virtual {p1, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/systemui/media/PlayerViewHolder;->action4:Landroid/widget/ImageButton;

    .line 62
    sget v1, Lcom/android/systemui/R$id;->remove_text:I

    invoke-virtual {p1, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/media/PlayerViewHolder;->settingsText:Landroid/widget/TextView;

    .line 63
    sget v1, Lcom/android/systemui/R$id;->cancel:I

    invoke-virtual {p1, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/media/PlayerViewHolder;->cancel:Landroid/view/View;

    .line 64
    sget v1, Lcom/android/systemui/R$id;->dismiss:I

    invoke-virtual {p1, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/media/PlayerViewHolder;->dismiss:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    .line 65
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/media/PlayerViewHolder;->dismissLabel:Landroid/view/View;

    .line 66
    sget v1, Lcom/android/systemui/R$id;->settings:I

    invoke-virtual {p1, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/media/PlayerViewHolder;->settings:Landroid/view/View;

    .line 69
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.android.systemui.media.IlluminationDrawable"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/media/IlluminationDrawable;

    .line 70
    invoke-virtual {p0}, Lcom/android/systemui/media/PlayerViewHolder;->getSeamless()Landroid/view/ViewGroup;

    move-result-object v0

    const-string v1, "seamless"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/media/IlluminationDrawable;->registerLightSource(Landroid/view/View;)V

    .line 71
    invoke-virtual {p0}, Lcom/android/systemui/media/PlayerViewHolder;->getAction0()Landroid/widget/ImageButton;

    move-result-object v0

    const-string v1, "action0"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/media/IlluminationDrawable;->registerLightSource(Landroid/view/View;)V

    .line 72
    invoke-virtual {p0}, Lcom/android/systemui/media/PlayerViewHolder;->getAction1()Landroid/widget/ImageButton;

    move-result-object v0

    const-string v1, "action1"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/media/IlluminationDrawable;->registerLightSource(Landroid/view/View;)V

    .line 73
    invoke-virtual {p0}, Lcom/android/systemui/media/PlayerViewHolder;->getAction2()Landroid/widget/ImageButton;

    move-result-object v0

    const-string v1, "action2"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/media/IlluminationDrawable;->registerLightSource(Landroid/view/View;)V

    .line 74
    invoke-virtual {p0}, Lcom/android/systemui/media/PlayerViewHolder;->getAction3()Landroid/widget/ImageButton;

    move-result-object v0

    const-string v1, "action3"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/media/IlluminationDrawable;->registerLightSource(Landroid/view/View;)V

    .line 75
    invoke-virtual {p0}, Lcom/android/systemui/media/PlayerViewHolder;->getAction4()Landroid/widget/ImageButton;

    move-result-object v0

    const-string v1, "action4"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/media/IlluminationDrawable;->registerLightSource(Landroid/view/View;)V

    .line 76
    invoke-virtual {p0}, Lcom/android/systemui/media/PlayerViewHolder;->getCancel()Landroid/view/View;

    move-result-object v0

    const-string v1, "cancel"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/media/IlluminationDrawable;->registerLightSource(Landroid/view/View;)V

    .line 77
    invoke-virtual {p0}, Lcom/android/systemui/media/PlayerViewHolder;->getDismiss()Landroid/view/ViewGroup;

    move-result-object v0

    const-string v1, "dismiss"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/media/IlluminationDrawable;->registerLightSource(Landroid/view/View;)V

    .line 78
    invoke-virtual {p0}, Lcom/android/systemui/media/PlayerViewHolder;->getSettings()Landroid/view/View;

    move-result-object p0

    const-string v0, "settings"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/android/systemui/media/IlluminationDrawable;->registerLightSource(Landroid/view/View;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/View;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/media/PlayerViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$getControlsIds$cp()Ljava/util/Set;
    .locals 1

    .line 32
    sget-object v0, Lcom/android/systemui/media/PlayerViewHolder;->controlsIds:Ljava/util/Set;

    return-object v0
.end method

.method public static final synthetic access$getGutsIds$cp()Ljava/util/Set;
    .locals 1

    .line 32
    sget-object v0, Lcom/android/systemui/media/PlayerViewHolder;->gutsIds:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public final getAction(I)Landroid/widget/ImageButton;
    .locals 1

    .line 84
    sget v0, Lcom/android/systemui/R$id;->action0:I

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/media/PlayerViewHolder;->action0:Landroid/widget/ImageButton;

    const-string p1, "action0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :cond_0
    sget v0, Lcom/android/systemui/R$id;->action1:I

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/media/PlayerViewHolder;->action1:Landroid/widget/ImageButton;

    const-string p1, "action1"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 86
    :cond_1
    sget v0, Lcom/android/systemui/R$id;->action2:I

    if-ne p1, v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/media/PlayerViewHolder;->action2:Landroid/widget/ImageButton;

    const-string p1, "action2"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :cond_2
    sget v0, Lcom/android/systemui/R$id;->action3:I

    if-ne p1, v0, :cond_3

    iget-object p0, p0, Lcom/android/systemui/media/PlayerViewHolder;->action3:Landroid/widget/ImageButton;

    const-string p1, "action3"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :cond_3
    sget v0, Lcom/android/systemui/R$id;->action4:I

    if-ne p1, v0, :cond_4

    iget-object p0, p0, Lcom/android/systemui/media/PlayerViewHolder;->action4:Landroid/widget/ImageButton;

    const-string p1, "action4"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p0

    .line 90
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public final getAction0()Landroid/widget/ImageButton;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/systemui/media/PlayerViewHolder;->action0:Landroid/widget/ImageButton;

    return-object p0
.end method

.method public final getAction1()Landroid/widget/ImageButton;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/systemui/media/PlayerViewHolder;->action1:Landroid/widget/ImageButton;

    return-object p0
.end method

.method public final getAction2()Landroid/widget/ImageButton;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/systemui/media/PlayerViewHolder;->action2:Landroid/widget/ImageButton;

    return-object p0
.end method

.method public final getAction3()Landroid/widget/ImageButton;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/systemui/media/PlayerViewHolder;->action3:Landroid/widget/ImageButton;

    return-object p0
.end method

.method public final getAction4()Landroid/widget/ImageButton;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/systemui/media/PlayerViewHolder;->action4:Landroid/widget/ImageButton;

    return-object p0
.end method

.method public final getAlbumView()Landroid/widget/ImageView;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/systemui/media/PlayerViewHolder;->albumView:Landroid/widget/ImageView;

    return-object p0
.end method

.method public final getAppIcon()Landroid/widget/ImageView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/systemui/media/PlayerViewHolder;->appIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method public final getArtistText()Landroid/widget/TextView;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/systemui/media/PlayerViewHolder;->artistText:Landroid/widget/TextView;

    return-object p0
.end method

.method public final getCancel()Landroid/view/View;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/systemui/media/PlayerViewHolder;->cancel:Landroid/view/View;

    return-object p0
.end method

.method public final getDismiss()Landroid/view/ViewGroup;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/systemui/media/PlayerViewHolder;->dismiss:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public final getDismissLabel()Landroid/view/View;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/systemui/media/PlayerViewHolder;->dismissLabel:Landroid/view/View;

    return-object p0
.end method

.method public final getElapsedTimeView()Landroid/widget/TextView;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/systemui/media/PlayerViewHolder;->elapsedTimeView:Landroid/widget/TextView;

    return-object p0
.end method

.method public final getPlayer()Lcom/android/systemui/util/animation/TransitionLayout;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/systemui/media/PlayerViewHolder;->player:Lcom/android/systemui/util/animation/TransitionLayout;

    return-object p0
.end method

.method public final getProgressTimes()Landroid/view/ViewGroup;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/systemui/media/PlayerViewHolder;->progressTimes:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public final getSeamless()Landroid/view/ViewGroup;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/systemui/media/PlayerViewHolder;->seamless:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public final getSeamlessFallback()Landroid/widget/ImageView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/systemui/media/PlayerViewHolder;->seamlessFallback:Landroid/widget/ImageView;

    return-object p0
.end method

.method public final getSeamlessIcon()Landroid/widget/ImageView;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/systemui/media/PlayerViewHolder;->seamlessIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method public final getSeamlessText()Landroid/widget/TextView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/systemui/media/PlayerViewHolder;->seamlessText:Landroid/widget/TextView;

    return-object p0
.end method

.method public final getSeekBar()Landroid/widget/SeekBar;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/systemui/media/PlayerViewHolder;->seekBar:Landroid/widget/SeekBar;

    return-object p0
.end method

.method public final getSettings()Landroid/view/View;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/systemui/media/PlayerViewHolder;->settings:Landroid/view/View;

    return-object p0
.end method

.method public final getSettingsText()Landroid/widget/TextView;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/systemui/media/PlayerViewHolder;->settingsText:Landroid/widget/TextView;

    return-object p0
.end method

.method public final getTitleText()Landroid/widget/TextView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/systemui/media/PlayerViewHolder;->titleText:Landroid/widget/TextView;

    return-object p0
.end method

.method public final getTotalTimeView()Landroid/widget/TextView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/systemui/media/PlayerViewHolder;->totalTimeView:Landroid/widget/TextView;

    return-object p0
.end method
