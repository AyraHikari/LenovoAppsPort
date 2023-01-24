.class public Lcom/zui/internal/app/MessageController$MessageParams;
.super Lcom/zui/internal/app/DialogController$DialogParams;
.source "MessageController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/internal/app/MessageController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageParams"
.end annotation


# instance fields
.field public mCheckBoxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field public mCheckMessage:Ljava/lang/CharSequence;

.field public mDescriptionItem:Lcom/zui/internal/app/MessageController$ClickableItem;

.field public mEditorError:Ljava/lang/CharSequence;

.field public mEditorHint:Ljava/lang/CharSequence;

.field public mEditorPrompt:Ljava/lang/CharSequence;

.field public mEditorText:Ljava/lang/CharSequence;

.field public mEditorWatcher:Landroid/text/TextWatcher;

.field public mGroupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/internal/app/MessageController$GroupItem;",
            ">;"
        }
    .end annotation
.end field

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mIconHint:Ljava/lang/CharSequence;

.field public mIconId:I

.field public mIconMessage:Ljava/lang/CharSequence;

.field public mIsChecked:Z

.field public mIsDialogCenter:Z

.field public mItemHighlight:I

.field public mItemsMessage:[Ljava/lang/CharSequence;

.field public mItemsTitle:[Ljava/lang/CharSequence;

.field public mPairedAdapter:Lzui/widget/PairedItemListAdapter;

.field public mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1173
    invoke-direct {p0, p1}, Lcom/zui/internal/app/DialogController$DialogParams;-><init>(Landroid/content/Context;)V

    .line 1174
    new-instance p1, Lcom/zui/internal/app/MessageController$ClickableItem;

    invoke-direct {p1}, Lcom/zui/internal/app/MessageController$ClickableItem;-><init>()V

    iput-object p1, p0, Lcom/zui/internal/app/MessageController$MessageParams;->mDescriptionItem:Lcom/zui/internal/app/MessageController$ClickableItem;

    return-void
.end method


# virtual methods
.method public addGroup(Ljava/lang/CharSequence;I)V
    .locals 3

    .line 1211
    iget-object v0, p0, Lcom/zui/internal/app/MessageController$MessageParams;->mGroupList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/internal/app/MessageController$MessageParams;->mGroupList:Ljava/util/List;

    :cond_0
    const/4 v0, 0x0

    .line 1215
    iget-object v1, p0, Lcom/zui/internal/app/MessageController$MessageParams;->mGroupList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/internal/app/MessageController$GroupItem;

    .line 1216
    iget v2, v2, Lcom/zui/internal/app/MessageController$GroupItem;->mGroupId:I

    if-ne v2, p2, :cond_1

    const/4 v0, 0x1

    :cond_2
    if-nez v0, :cond_3

    .line 1222
    iget-object v0, p0, Lcom/zui/internal/app/MessageController$MessageParams;->mGroupList:Ljava/util/List;

    new-instance v1, Lcom/zui/internal/app/MessageController$GroupItem;

    invoke-direct {v1, p1, p2}, Lcom/zui/internal/app/MessageController$GroupItem;-><init>(Ljava/lang/CharSequence;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method public addItemToGroup(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 1228
    iget-object v0, p0, Lcom/zui/internal/app/MessageController$MessageParams;->mGroupList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 1229
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/internal/app/MessageController$GroupItem;

    .line 1230
    iget v2, v1, Lcom/zui/internal/app/MessageController$GroupItem;->mGroupId:I

    if-ne v2, p1, :cond_0

    .line 1231
    invoke-virtual {v1, p2, p3, p4}, Lcom/zui/internal/app/MessageController$GroupItem;->addItem(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public apply(Lcom/zui/internal/app/MessageController;)V
    .locals 3

    .line 1178
    invoke-super {p0, p1}, Lcom/zui/internal/app/DialogController$DialogParams;->apply(Lcom/zui/internal/app/DialogController;)V

    .line 1179
    iget v0, p0, Lcom/zui/internal/app/MessageController$MessageParams;->mType:I

    invoke-virtual {p1, v0}, Lcom/zui/internal/app/MessageController;->setType(I)V

    .line 1180
    iget-object v0, p0, Lcom/zui/internal/app/MessageController$MessageParams;->mPairedAdapter:Lzui/widget/PairedItemListAdapter;

    if-eqz v0, :cond_0

    .line 1181
    iget v1, p0, Lcom/zui/internal/app/MessageController$MessageParams;->mItemHighlight:I

    invoke-virtual {p1, v0, v1}, Lcom/zui/internal/app/MessageController;->setPairedItem(Lzui/widget/PairedItemListAdapter;I)V

    goto :goto_0

    .line 1183
    :cond_0
    iget-object v0, p0, Lcom/zui/internal/app/MessageController$MessageParams;->mItemsTitle:[Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/zui/internal/app/MessageController$MessageParams;->mItemsMessage:[Ljava/lang/CharSequence;

    iget v2, p0, Lcom/zui/internal/app/MessageController$MessageParams;->mItemHighlight:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/zui/internal/app/MessageController;->setPairedItems([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;I)V

    .line 1185
    :goto_0
    iget-object v0, p0, Lcom/zui/internal/app/MessageController$MessageParams;->mGroupList:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/zui/internal/app/MessageController;->setGroupList(Ljava/util/List;)V

    .line 1186
    iget-object v0, p0, Lcom/zui/internal/app/MessageController$MessageParams;->mDescriptionItem:Lcom/zui/internal/app/MessageController$ClickableItem;

    iget-object v0, v0, Lcom/zui/internal/app/MessageController$ClickableItem;->mText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1187
    iget-object v0, p0, Lcom/zui/internal/app/MessageController$MessageParams;->mDescriptionItem:Lcom/zui/internal/app/MessageController$ClickableItem;

    invoke-virtual {p1, v0}, Lcom/zui/internal/app/MessageController;->setDescriptionItem(Lcom/zui/internal/app/MessageController$ClickableItem;)V

    .line 1190
    :cond_1
    iget-object v0, p0, Lcom/zui/internal/app/MessageController$MessageParams;->mEditorText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/zui/internal/app/MessageController;->setEditorText(Ljava/lang/CharSequence;)V

    .line 1191
    iget-object v0, p0, Lcom/zui/internal/app/MessageController$MessageParams;->mEditorHint:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/zui/internal/app/MessageController;->setEditorHint(Ljava/lang/CharSequence;)V

    .line 1192
    iget-object v0, p0, Lcom/zui/internal/app/MessageController$MessageParams;->mEditorPrompt:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/zui/internal/app/MessageController;->setEditorPromptMessage(Ljava/lang/CharSequence;)V

    .line 1193
    iget-object v0, p0, Lcom/zui/internal/app/MessageController$MessageParams;->mEditorError:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/zui/internal/app/MessageController;->setEditorErrorMessage(Ljava/lang/CharSequence;)V

    .line 1194
    iget-object v0, p0, Lcom/zui/internal/app/MessageController$MessageParams;->mEditorWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p1, v0}, Lcom/zui/internal/app/MessageController;->setEditorTextWatcher(Landroid/text/TextWatcher;)V

    .line 1196
    iget-object v0, p0, Lcom/zui/internal/app/MessageController$MessageParams;->mCheckMessage:Ljava/lang/CharSequence;

    iget-boolean v1, p0, Lcom/zui/internal/app/MessageController$MessageParams;->mIsChecked:Z

    invoke-virtual {p1, v0, v1}, Lcom/zui/internal/app/MessageController;->setCheckMessage(Ljava/lang/CharSequence;Z)V

    .line 1197
    iget-object v0, p0, Lcom/zui/internal/app/MessageController$MessageParams;->mCheckBoxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p1, v0}, Lcom/zui/internal/app/MessageController;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1198
    iget-boolean v0, p0, Lcom/zui/internal/app/MessageController$MessageParams;->mIsDialogCenter:Z

    invoke-virtual {p1, v0}, Lcom/zui/internal/app/MessageController;->setDialogCenter(Z)V

    .line 1199
    iget v0, p0, Lcom/zui/internal/app/MessageController$MessageParams;->mIconId:I

    if-eqz v0, :cond_2

    .line 1200
    invoke-virtual {p1, v0}, Lcom/zui/internal/app/MessageController;->setIcon(I)V

    goto :goto_1

    .line 1201
    :cond_2
    iget-object v0, p0, Lcom/zui/internal/app/MessageController$MessageParams;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 1202
    iget-object v1, p0, Lcom/zui/internal/app/MessageController$MessageParams;->mIconHint:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    .line 1203
    iget-object v2, p0, Lcom/zui/internal/app/MessageController$MessageParams;->mIconMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v2, v1}, Lcom/zui/internal/app/MessageController;->setIcon(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1205
    :cond_3
    iget-object v1, p0, Lcom/zui/internal/app/MessageController$MessageParams;->mIconMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Lcom/zui/internal/app/MessageController;->setIcon(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    :cond_4
    :goto_1
    return-void
.end method
