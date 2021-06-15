.class Lcom/android/systemui/qs/tiles/QuickAccessWalletTile$WalletCardRetriever;
.super Ljava/lang/Object;
.source "QuickAccessWalletTile.java"

# interfaces
.implements Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WalletCardRetriever"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile$WalletCardRetriever;->this$0:Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;Lcom/android/systemui/qs/tiles/QuickAccessWalletTile$1;)V
    .locals 0

    .line 214
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile$WalletCardRetriever;-><init>(Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;)V

    return-void
.end method


# virtual methods
.method public onWalletCardRetrievalError(Landroid/service/quickaccesswallet/GetWalletCardsError;)V
    .locals 1

    const-string p1, "QuickAccessWalletTile"

    const-string v0, "Error retrieve wallet cards"

    .line 240
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile$WalletCardRetriever;->this$0:Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;->mCardViewDrawable:Landroid/graphics/drawable/Drawable;

    .line 242
    invoke-static {p1, v0}, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;->access$102(Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;Landroid/service/quickaccesswallet/WalletCard;)Landroid/service/quickaccesswallet/WalletCard;

    .line 243
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile$WalletCardRetriever;->this$0:Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    return-void
.end method

.method public onWalletCardsRetrieved(Landroid/service/quickaccesswallet/GetWalletCardsResponse;)V
    .locals 3

    const-string v0, "QuickAccessWalletTile"

    const-string v1, "Successfully retrieved wallet cards."

    .line 219
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-virtual {p1}, Landroid/service/quickaccesswallet/GetWalletCardsResponse;->getWalletCards()Ljava/util/List;

    move-result-object v1

    .line 221
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p1, "No wallet cards exist."

    .line 222
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile$WalletCardRetriever;->this$0:Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;->mCardViewDrawable:Landroid/graphics/drawable/Drawable;

    .line 224
    invoke-static {p1, v0}, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;->access$102(Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;Landroid/service/quickaccesswallet/WalletCard;)Landroid/service/quickaccesswallet/WalletCard;

    .line 225
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile$WalletCardRetriever;->this$0:Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    return-void

    .line 228
    :cond_0
    invoke-virtual {p1}, Landroid/service/quickaccesswallet/GetWalletCardsResponse;->getSelectedIndex()I

    move-result p1

    .line 229
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lt p1, v2, :cond_1

    const-string p0, "Selected card index out of bounds."

    .line 230
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile$WalletCardRetriever;->this$0:Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/quickaccesswallet/WalletCard;

    invoke-static {v0, p1}, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;->access$102(Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;Landroid/service/quickaccesswallet/WalletCard;)Landroid/service/quickaccesswallet/WalletCard;

    .line 234
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile$WalletCardRetriever;->this$0:Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;->access$100(Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;)Landroid/service/quickaccesswallet/WalletCard;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/quickaccesswallet/WalletCard;->getCardImage()Landroid/graphics/drawable/Icon;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile$WalletCardRetriever;->this$0:Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;->access$200(Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;->mCardViewDrawable:Landroid/graphics/drawable/Drawable;

    .line 235
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile$WalletCardRetriever;->this$0:Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    return-void
.end method
