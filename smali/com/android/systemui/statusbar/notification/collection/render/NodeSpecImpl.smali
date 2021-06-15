.class public final Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;
.super Ljava/lang/Object;
.source "NodeController.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/render/NodeSpec;


# instance fields
.field private final children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/render/NodeSpec;",
            ">;"
        }
    .end annotation
.end field

.field private final controller:Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

.field private final parent:Lcom/android/systemui/statusbar/notification/collection/render/NodeSpec;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/render/NodeSpec;Lcom/android/systemui/statusbar/notification/collection/render/NodeController;)V
    .locals 1

    const-string v0, "controller"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;->parent:Lcom/android/systemui/statusbar/notification/collection/render/NodeSpec;

    .line 68
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;->controller:Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

    .line 70
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;->children:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getChildren()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/render/NodeSpec;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;->children:Ljava/util/List;

    return-object p0
.end method

.method public getController()Lcom/android/systemui/statusbar/notification/collection/render/NodeController;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;->controller:Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

    return-object p0
.end method

.method public getParent()Lcom/android/systemui/statusbar/notification/collection/render/NodeSpec;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;->parent:Lcom/android/systemui/statusbar/notification/collection/render/NodeSpec;

    return-object p0
.end method
