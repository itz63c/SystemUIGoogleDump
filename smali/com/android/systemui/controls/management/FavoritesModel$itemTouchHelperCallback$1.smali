.class public final Lcom/android/systemui/controls/management/FavoritesModel$itemTouchHelperCallback$1;
.super Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;
.source "FavoritesModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/management/FavoritesModel;-><init>(Lcom/android/systemui/controls/CustomIconCache;Landroid/content/ComponentName;Ljava/util/List;Lcom/android/systemui/controls/management/FavoritesModel$FavoritesModelCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private final MOVEMENT:I

.field final synthetic this$0:Lcom/android/systemui/controls/management/FavoritesModel;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/management/FavoritesModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/management/FavoritesModel$itemTouchHelperCallback$1;->this$0:Lcom/android/systemui/controls/management/FavoritesModel;

    const/4 p1, 0x0

    .line 211
    invoke-direct {p0, p1, p1}, Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;-><init>(II)V

    const/16 p1, 0xf

    .line 213
    iput p1, p0, Lcom/android/systemui/controls/management/FavoritesModel$itemTouchHelperCallback$1;->MOVEMENT:I

    return-void
.end method


# virtual methods
.method public canDropOver(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "current"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "target"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/controls/management/FavoritesModel$itemTouchHelperCallback$1;->this$0:Lcom/android/systemui/controls/management/FavoritesModel;

    invoke-static {p0}, Lcom/android/systemui/controls/management/FavoritesModel;->access$getDividerPosition$p(Lcom/android/systemui/controls/management/FavoritesModel;)I

    move-result p0

    if-ge p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "viewHolder"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p1

    iget-object p2, p0, Lcom/android/systemui/controls/management/FavoritesModel$itemTouchHelperCallback$1;->this$0:Lcom/android/systemui/controls/management/FavoritesModel;

    invoke-static {p2}, Lcom/android/systemui/controls/management/FavoritesModel;->access$getDividerPosition$p(Lcom/android/systemui/controls/management/FavoritesModel;)I

    move-result p2

    const/4 v0, 0x0

    if-ge p1, p2, :cond_0

    .line 232
    iget p0, p0, Lcom/android/systemui/controls/management/FavoritesModel$itemTouchHelperCallback$1;->MOVEMENT:I

    invoke-static {p0, v0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p0

    return p0

    .line 234
    :cond_0
    invoke-static {v0, v0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p0

    return p0
.end method

.method public isItemViewSwipeEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "viewHolder"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "target"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    iget-object p0, p0, Lcom/android/systemui/controls/management/FavoritesModel$itemTouchHelperCallback$1;->this$0:Lcom/android/systemui/controls/management/FavoritesModel;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p1

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/controls/management/FavoritesModel;->onMoveItem(II)V

    const/4 p0, 0x1

    return p0
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    const-string/jumbo p0, "viewHolder"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
