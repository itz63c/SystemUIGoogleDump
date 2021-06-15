.class Lcom/google/android/systemui/smartspace/BcSmartspaceView$2;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "BcSmartspaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/smartspace/BcSmartspaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCurrentPosition:I

.field final synthetic this$0:Lcom/google/android/systemui/smartspace/BcSmartspaceView;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/smartspace/BcSmartspaceView;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView$2;->this$0:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    const/4 p1, -0x1

    .line 180
    iput p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView$2;->mCurrentPosition:I

    return-void
.end method


# virtual methods
.method public onPageScrolled(IFI)V
    .locals 0

    .line 185
    iget-object p3, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView$2;->this$0:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    invoke-static {p3}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->access$1100(Lcom/google/android/systemui/smartspace/BcSmartspaceView;)Lcom/google/android/systemui/smartspace/PageIndicator;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 186
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView$2;->this$0:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    invoke-static {p0}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->access$1100(Lcom/google/android/systemui/smartspace/BcSmartspaceView;)Lcom/google/android/systemui/smartspace/PageIndicator;

    move-result-object p0

    int-to-float p1, p1

    add-float/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/smartspace/PageIndicator;->setLocation(F)V

    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 6

    .line 192
    iget v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView$2;->mCurrentPosition:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView$2;->this$0:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    invoke-static {v0}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->access$1000(Lcom/google/android/systemui/smartspace/BcSmartspaceView;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView$2;->this$0:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    invoke-static {v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->access$200(Lcom/google/android/systemui/smartspace/BcSmartspaceView;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView$2;->mCurrentPosition:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;

    .line 194
    :goto_0
    iput p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView$2;->mCurrentPosition:I

    .line 195
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView$2;->this$0:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    invoke-static {v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->access$1000(Lcom/google/android/systemui/smartspace/BcSmartspaceView;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView$2;->this$0:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    invoke-static {v3}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->access$200(Lcom/google/android/systemui/smartspace/BcSmartspaceView;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;

    invoke-static {v1, v2}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->access$1202(Lcom/google/android/systemui/smartspace/BcSmartspaceView;Lcom/google/android/systemui/smartspace/BcSmartspaceCard;)Lcom/google/android/systemui/smartspace/BcSmartspaceCard;

    .line 196
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView$2;->this$0:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    invoke-static {v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->access$1200(Lcom/google/android/systemui/smartspace/BcSmartspaceView;)Lcom/google/android/systemui/smartspace/BcSmartspaceCard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->getTarget()Landroid/app/smartspace/SmartspaceTarget;

    move-result-object v1

    .line 197
    sget-object v2, Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;->SMARTSPACE_CARD_SEEN:Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;

    .line 198
    invoke-virtual {v2}, Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;->getId()I

    move-result v3

    .line 205
    iget-object v4, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView$2;->this$0:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    invoke-static {v4}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->access$1300(Lcom/google/android/systemui/smartspace/BcSmartspaceView;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView$2;->this$0:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    .line 206
    invoke-static {v4}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->access$1300(Lcom/google/android/systemui/smartspace/BcSmartspaceView;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v3, :cond_2

    .line 207
    :cond_1
    iget-object v4, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView$2;->this$0:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    invoke-static {v4}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->access$1300(Lcom/google/android/systemui/smartspace/BcSmartspaceView;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    new-instance v3, Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo$Builder;

    invoke-direct {v3}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo$Builder;-><init>()V

    .line 210
    invoke-static {v1}, Lcom/google/android/systemui/smartspace/InstanceId;->create(Landroid/app/smartspace/SmartspaceTarget;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo$Builder;->setInstanceId(I)Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo$Builder;

    move-result-object v3

    .line 212
    invoke-virtual {v1}, Landroid/app/smartspace/SmartspaceTarget;->getFeatureType()I

    move-result v4

    .line 211
    invoke-static {v4}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->getLoggingCardType(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo$Builder;->setLoggingCardType(I)Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView$2;->this$0:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    .line 215
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView$2;->this$0:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    invoke-static {v5}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->access$300(Lcom/google/android/systemui/smartspace/BcSmartspaceView;)F

    move-result v5

    .line 214
    invoke-static {v4, v5}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->getLoggingDisplaySurface(Ljava/lang/String;F)I

    move-result v4

    .line 213
    invoke-virtual {v3, v4}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo$Builder;->setDisplaySurface(I)Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo$Builder;

    move-result-object v3

    .line 216
    invoke-virtual {v3, p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo$Builder;->setRank(I)Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo$Builder;

    move-result-object p1

    iget-object v3, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView$2;->this$0:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    .line 217
    invoke-static {v3}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->access$1000(Lcom/google/android/systemui/smartspace/BcSmartspaceView;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo$Builder;->setCardinality(I)Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo$Builder;

    move-result-object p1

    .line 218
    invoke-virtual {p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo$Builder;->build()Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo;

    move-result-object p1

    .line 219
    invoke-static {v2, p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceLogger;->log(Lcom/google/android/systemui/smartspace/EventEnum;Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo;)V

    .line 222
    :cond_2
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView$2;->this$0:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    invoke-static {p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->access$400(Lcom/google/android/systemui/smartspace/BcSmartspaceView;)Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    move-result-object p1

    const-string v2, "BcSmartspaceView"

    if-nez p1, :cond_3

    const-string p0, "Cannot notify target hidden/shown smartspace events: data provider null"

    .line 223
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    if-nez v0, :cond_4

    const-string p1, "Cannot notify target hidden smartspace event: hidden card null."

    .line 229
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 232
    :cond_4
    invoke-virtual {v0}, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->getTarget()Landroid/app/smartspace/SmartspaceTarget;

    move-result-object p1

    if-nez p1, :cond_5

    const-string p1, "Cannot notify target hidden smartspace event: hidden card smartspace target null."

    .line 235
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 239
    :cond_5
    new-instance v0, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;

    const/4 v3, 0x3

    invoke-direct {v0, v3}, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;-><init>(I)V

    .line 243
    invoke-virtual {v0, p1}, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;->setSmartspaceTarget(Landroid/app/smartspace/SmartspaceTarget;)Landroid/app/smartspace/SmartspaceTargetEvent$Builder;

    .line 244
    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->getBaseAction()Landroid/app/smartspace/SmartspaceAction;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 246
    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceAction;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;->setSmartspaceActionId(Ljava/lang/String;)Landroid/app/smartspace/SmartspaceTargetEvent$Builder;

    .line 249
    :cond_6
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView$2;->this$0:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    invoke-static {p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->access$400(Lcom/google/android/systemui/smartspace/BcSmartspaceView;)Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    move-result-object p1

    invoke-virtual {v0}, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;->build()Landroid/app/smartspace/SmartspaceTargetEvent;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;->notifySmartspaceEvent(Landroid/app/smartspace/SmartspaceTargetEvent;)V

    :goto_1
    if-nez v1, :cond_7

    const-string p0, "Cannot notify target shown smartspace event: shown card smartspace target null."

    .line 254
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 258
    :cond_7
    new-instance p1, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;-><init>(I)V

    .line 262
    invoke-virtual {p1, v1}, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;->setSmartspaceTarget(Landroid/app/smartspace/SmartspaceTarget;)Landroid/app/smartspace/SmartspaceTargetEvent$Builder;

    .line 263
    invoke-virtual {v1}, Landroid/app/smartspace/SmartspaceTarget;->getBaseAction()Landroid/app/smartspace/SmartspaceAction;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 265
    invoke-virtual {v0}, Landroid/app/smartspace/SmartspaceAction;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;->setSmartspaceActionId(Ljava/lang/String;)Landroid/app/smartspace/SmartspaceTargetEvent$Builder;

    .line 268
    :cond_8
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView$2;->this$0:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    invoke-static {p0}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->access$400(Lcom/google/android/systemui/smartspace/BcSmartspaceView;)Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    move-result-object p0

    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;->build()Landroid/app/smartspace/SmartspaceTargetEvent;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;->notifySmartspaceEvent(Landroid/app/smartspace/SmartspaceTargetEvent;)V

    :goto_2
    return-void
.end method
