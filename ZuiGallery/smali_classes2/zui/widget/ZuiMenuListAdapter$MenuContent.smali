.class Lzui/widget/ZuiMenuListAdapter$MenuContent;
.super Ljava/lang/Object;
.source "ZuiMenuListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzui/widget/ZuiMenuListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuContent"
.end annotation


# instance fields
.field private mHasSubmenu:Z

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mId:I

.field private mIsSubmenuItem:Z

.field private mTitle:Ljava/lang/CharSequence;

.field final synthetic this$0:Lzui/widget/ZuiMenuListAdapter;


# direct methods
.method public constructor <init>(Lzui/widget/ZuiMenuListAdapter;ILjava/lang/CharSequence;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lzui/widget/ZuiMenuListAdapter$MenuContent;->this$0:Lzui/widget/ZuiMenuListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput p2, p0, Lzui/widget/ZuiMenuListAdapter$MenuContent;->mId:I

    .line 183
    iput-object p3, p0, Lzui/widget/ZuiMenuListAdapter$MenuContent;->mTitle:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    .line 184
    iput-object p1, p0, Lzui/widget/ZuiMenuListAdapter$MenuContent;->mIcon:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 185
    iput-boolean p1, p0, Lzui/widget/ZuiMenuListAdapter$MenuContent;->mHasSubmenu:Z

    .line 186
    iput-boolean p1, p0, Lzui/widget/ZuiMenuListAdapter$MenuContent;->mIsSubmenuItem:Z

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/CharSequence;
    .locals 1

    .line 194
    iget-object v0, p0, Lzui/widget/ZuiMenuListAdapter$MenuContent;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 202
    iget-object v0, p0, Lzui/widget/ZuiMenuListAdapter$MenuContent;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 190
    iget v0, p0, Lzui/widget/ZuiMenuListAdapter$MenuContent;->mId:I

    return v0
.end method

.method public hasSubmenu()Z
    .locals 1

    .line 210
    iget-boolean v0, p0, Lzui/widget/ZuiMenuListAdapter$MenuContent;->mHasSubmenu:Z

    return v0
.end method

.method public isSubmenuItem()Z
    .locals 1

    .line 218
    iget-boolean v0, p0, Lzui/widget/ZuiMenuListAdapter$MenuContent;->mIsSubmenuItem:Z

    return v0
.end method

.method public setHasSubmenu(Z)V
    .locals 0

    .line 206
    iput-boolean p1, p0, Lzui/widget/ZuiMenuListAdapter$MenuContent;->mHasSubmenu:Z

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lzui/widget/ZuiMenuListAdapter$MenuContent;->mIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setIsSubmenuItem(Z)V
    .locals 0

    .line 214
    iput-boolean p1, p0, Lzui/widget/ZuiMenuListAdapter$MenuContent;->mIsSubmenuItem:Z

    return-void
.end method
