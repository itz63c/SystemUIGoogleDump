.class final Lcom/android/systemui/privacy/PrivacyItemController$NotifyChangesToCallback;
.super Ljava/lang/Object;
.source "PrivacyItemController.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/privacy/PrivacyItemController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NotifyChangesToCallback"
.end annotation


# instance fields
.field private final callback:Lcom/android/systemui/privacy/PrivacyItemController$Callback;

.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/privacy/PrivacyItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/privacy/PrivacyItemController$Callback;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/privacy/PrivacyItemController$Callback;",
            "Ljava/util/List<",
            "Lcom/android/systemui/privacy/PrivacyItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 351
    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController$NotifyChangesToCallback;->callback:Lcom/android/systemui/privacy/PrivacyItemController$Callback;

    .line 352
    iput-object p2, p0, Lcom/android/systemui/privacy/PrivacyItemController$NotifyChangesToCallback;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyItemController$NotifyChangesToCallback;->callback:Lcom/android/systemui/privacy/PrivacyItemController$Callback;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyItemController$NotifyChangesToCallback;->list:Ljava/util/List;

    invoke-interface {v0, p0}, Lcom/android/systemui/privacy/PrivacyItemController$Callback;->onPrivacyItemsChanged(Ljava/util/List;)V

    :goto_0
    return-void
.end method
