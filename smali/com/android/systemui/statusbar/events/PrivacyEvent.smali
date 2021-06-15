.class public final Lcom/android/systemui/statusbar/events/PrivacyEvent;
.super Ljava/lang/Object;
.source "StatusEvent.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/events/StatusEvent;


# instance fields
.field private final forceVisible:Z

.field private final priority:I

.field private privacyChip:Lcom/android/systemui/privacy/OngoingPrivacyChip;

.field private privacyItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/privacy/PrivacyItem;",
            ">;"
        }
    .end annotation
.end field

.field private final showAnimation:Z

.field private final viewCreator:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/content/Context;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/events/PrivacyEvent;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/events/PrivacyEvent;->showAnimation:Z

    const/16 p1, 0x64

    .line 66
    iput p1, p0, Lcom/android/systemui/statusbar/events/PrivacyEvent;->priority:I

    const/4 p1, 0x1

    .line 67
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/events/PrivacyEvent;->forceVisible:Z

    .line 68
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/events/PrivacyEvent;->privacyItems:Ljava/util/List;

    .line 71
    new-instance p1, Lcom/android/systemui/statusbar/events/PrivacyEvent$viewCreator$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/events/PrivacyEvent$viewCreator$1;-><init>(Lcom/android/systemui/statusbar/events/PrivacyEvent;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/events/PrivacyEvent;->viewCreator:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public synthetic constructor <init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    .line 65
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/events/PrivacyEvent;-><init>(Z)V

    return-void
.end method

.method public static final synthetic access$setPrivacyChip$p(Lcom/android/systemui/statusbar/events/PrivacyEvent;Lcom/android/systemui/privacy/OngoingPrivacyChip;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/android/systemui/statusbar/events/PrivacyEvent;->privacyChip:Lcom/android/systemui/privacy/OngoingPrivacyChip;

    return-void
.end method


# virtual methods
.method public getForceVisible()Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/events/PrivacyEvent;->forceVisible:Z

    return p0
.end method

.method public getPriority()I
    .locals 0

    .line 66
    iget p0, p0, Lcom/android/systemui/statusbar/events/PrivacyEvent;->priority:I

    return p0
.end method

.method public final getPrivacyItems()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/privacy/PrivacyItem;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/PrivacyEvent;->privacyItems:Ljava/util/List;

    return-object p0
.end method

.method public getShowAnimation()Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/events/PrivacyEvent;->showAnimation:Z

    return p0
.end method

.method public getViewCreator()Lkotlin/jvm/functions/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/content/Context;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/PrivacyEvent;->viewCreator:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final setPrivacyItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/privacy/PrivacyItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iput-object p1, p0, Lcom/android/systemui/statusbar/events/PrivacyEvent;->privacyItems:Ljava/util/List;

    return-void
.end method

.method public shouldUpdateFromEvent(Lcom/android/systemui/statusbar/events/StatusEvent;)Z
    .locals 1

    .line 84
    instance-of v0, p1, Lcom/android/systemui/statusbar/events/PrivacyEvent;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/systemui/statusbar/events/PrivacyEvent;

    iget-object p1, p1, Lcom/android/systemui/statusbar/events/PrivacyEvent;->privacyItems:Ljava/util/List;

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/PrivacyEvent;->privacyItems:Ljava/util/List;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 80
    const-class p0, Lcom/android/systemui/statusbar/events/PrivacyEvent;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "javaClass.simpleName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public updateFromEvent(Lcom/android/systemui/statusbar/events/StatusEvent;)V
    .locals 1

    .line 88
    instance-of v0, p1, Lcom/android/systemui/statusbar/events/PrivacyEvent;

    if-nez v0, :cond_0

    return-void

    .line 92
    :cond_0
    check-cast p1, Lcom/android/systemui/statusbar/events/PrivacyEvent;

    iget-object v0, p1, Lcom/android/systemui/statusbar/events/PrivacyEvent;->privacyItems:Ljava/util/List;

    iput-object v0, p0, Lcom/android/systemui/statusbar/events/PrivacyEvent;->privacyItems:Ljava/util/List;

    .line 93
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/PrivacyEvent;->privacyChip:Lcom/android/systemui/privacy/OngoingPrivacyChip;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p1, Lcom/android/systemui/statusbar/events/PrivacyEvent;->privacyItems:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/systemui/privacy/OngoingPrivacyChip;->setPrivacyList(Ljava/util/List;)V

    :goto_0
    return-void
.end method
