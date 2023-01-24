.class public Lcom/zui/gallery/ui/DialogDetailsView;
.super Ljava/lang/Object;
.source "DialogDetailsView.java"

# interfaces
.implements Lcom/zui/gallery/ui/DetailsHelper$DetailsViewContainer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/ui/DialogDetailsView$DetailsAdapter;,
        Lcom/zui/gallery/ui/DialogDetailsView$XuiDetailsAdapter;
    }
.end annotation


# static fields
.field private static DETAIL_ITME_LIME:I = 0x7

.field private static DIALOG_MAX_HEIGHT:I = 0x411

.field private static DIALOG_MAX_HEIGHT_FOR_MULTWIN:I = 0x2d0

.field private static final TAG:Ljava/lang/String; = "DialogDetailsView"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mAdapter:Lcom/zui/gallery/ui/DialogDetailsView$DetailsAdapter;

.field private mDetails:Lcom/zui/gallery/data/MediaDetails;

.field private mDialog:Lzui/app/MessageDialog;

.field private mIndex:I

.field private mListener:Lcom/zui/gallery/ui/DetailsHelper$CloseListener;

.field private final mSource:Lcom/zui/gallery/ui/DetailsHelper$DetailsSource;

.field private mXuiAdapter:Lcom/zui/gallery/ui/DialogDetailsView$XuiDetailsAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/zui/gallery/ui/DetailsHelper$DetailsSource;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/zui/gallery/ui/DialogDetailsView;->mActivity:Landroid/app/Activity;

    .line 81
    iput-object p2, p0, Lcom/zui/gallery/ui/DialogDetailsView;->mSource:Lcom/zui/gallery/ui/DetailsHelper$DetailsSource;

    return-void
.end method

.method public constructor <init>(Lcom/zui/gallery/app/AbstractGalleryActivity;Lcom/zui/gallery/ui/DetailsHelper$DetailsSource;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/zui/gallery/ui/DialogDetailsView;->mActivity:Landroid/app/Activity;

    .line 76
    iput-object p2, p0, Lcom/zui/gallery/ui/DialogDetailsView;->mSource:Lcom/zui/gallery/ui/DetailsHelper$DetailsSource;

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/ui/DialogDetailsView;)Lzui/app/MessageDialog;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/zui/gallery/ui/DialogDetailsView;->mDialog:Lzui/app/MessageDialog;

    return-object p0
.end method

.method static synthetic access$100(Lcom/zui/gallery/ui/DialogDetailsView;)Lcom/zui/gallery/ui/DetailsHelper$CloseListener;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/zui/gallery/ui/DialogDetailsView;->mListener:Lcom/zui/gallery/ui/DetailsHelper$CloseListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/zui/gallery/ui/DialogDetailsView;)Landroid/app/Activity;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/zui/gallery/ui/DialogDetailsView;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$300(Lcom/zui/gallery/ui/DialogDetailsView;)Lcom/zui/gallery/data/MediaDetails;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/zui/gallery/ui/DialogDetailsView;->mDetails:Lcom/zui/gallery/data/MediaDetails;

    return-object p0
.end method

.method private createDetailsFromSQlite(Ljava/lang/String;)Lcom/zui/gallery/data/MediaDetails;
    .locals 12

    const-string v0, "file_model"

    const-string v1, "file_make"

    .line 149
    new-instance v2, Lcom/zui/gallery/data/MediaDetails;

    invoke-direct {v2}, Lcom/zui/gallery/data/MediaDetails;-><init>()V

    const-string v3, "/"

    .line 150
    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    const-string v4, "."

    .line 152
    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v3, v5

    .line 153
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 154
    iget-object v3, p0, Lcom/zui/gallery/ui/DialogDetailsView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/zui/gallery/database/GalleryContract$PrivacyFiles;->CONTENT_URI:Landroid/net/Uri;

    new-array v10, v5, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v10, v3

    const/4 v8, 0x0

    const-string/jumbo v9, "title=? "

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 156
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cursor = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " & name is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v6, "wangcanprovider"

    invoke-static {v6, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_9

    .line 159
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 160
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 161
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x4

    .line 163
    invoke-interface {v4, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v5, p1}, Lcom/zui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    const/4 p1, 0x5

    .line 164
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/zui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    const/16 p1, 0x8

    .line 165
    invoke-interface {v4, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v6, 0x6

    invoke-virtual {v2, v6, v3}, Lcom/zui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    const/16 v3, 0xa

    .line 166
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Lcom/zui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    const/4 v3, 0x2

    .line 167
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x3

    invoke-virtual {v2, v6, v3}, Lcom/zui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    const/16 v3, 0xc8

    .line 168
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/zui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    const/16 v3, 0xd

    .line 170
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_0

    .line 171
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/zui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 172
    :cond_0
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v4, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v4, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const/16 p1, 0x64

    .line 173
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, p1, v1}, Lcom/zui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 174
    :cond_1
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v4, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v4, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    const/16 p1, 0x65

    .line 175
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Lcom/zui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    :cond_2
    const/16 p1, 0x11

    .line 177
    invoke-interface {v4, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v4, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, 0x69

    .line 178
    invoke-interface {v4, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Lcom/zui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    :cond_3
    const/16 p1, 0x9

    .line 179
    invoke-interface {v4, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    const-wide/16 v7, 0x0

    cmpl-double v0, v0, v7

    if-eqz v0, :cond_4

    const/16 v0, 0x67

    .line 180
    invoke-interface {v4, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Lcom/zui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    :cond_4
    const/16 p1, 0xb

    .line 181
    invoke-interface {v4, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v4, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const/16 v0, 0x68

    .line 182
    invoke-interface {v4, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Lcom/zui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 183
    :cond_5
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    const/16 p1, 0x6b

    .line 184
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Lcom/zui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    :cond_6
    const/4 p1, 0x7

    .line 185
    invoke-interface {v4, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {v4, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const/16 v0, 0x6c

    .line 186
    invoke-interface {v4, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Lcom/zui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    :cond_7
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    return-object v2

    :cond_8
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 194
    throw p1

    :cond_9
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private setDetails(Lcom/zui/gallery/data/MediaDetails;)V
    .locals 4

    .line 218
    new-instance v0, Lcom/zui/gallery/ui/DialogDetailsView$XuiDetailsAdapter;

    invoke-direct {v0, p0, p1}, Lcom/zui/gallery/ui/DialogDetailsView$XuiDetailsAdapter;-><init>(Lcom/zui/gallery/ui/DialogDetailsView;Lcom/zui/gallery/data/MediaDetails;)V

    iput-object v0, p0, Lcom/zui/gallery/ui/DialogDetailsView;->mXuiAdapter:Lcom/zui/gallery/ui/DialogDetailsView$XuiDetailsAdapter;

    .line 219
    iget-object p1, p0, Lcom/zui/gallery/ui/DialogDetailsView;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1000d7

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 220
    iget-object v0, p0, Lcom/zui/gallery/ui/DialogDetailsView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0040

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 221
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 228
    iget-object v0, p0, Lcom/zui/gallery/ui/DialogDetailsView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iget-object v1, p0, Lcom/zui/gallery/ui/DialogDetailsView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const v0, 0x7f1101d3

    goto :goto_0

    :cond_0
    const v0, 0x7f1101d0

    .line 231
    :goto_0
    new-instance v1, Lzui/app/MessageDialog$Builder;

    iget-object v3, p0, Lcom/zui/gallery/ui/DialogDetailsView;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v3, v0}, Lzui/app/MessageDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 235
    invoke-virtual {v1, p1}, Lzui/app/MessageDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lzui/app/MessageDialog$Builder;

    move-result-object p1

    const/4 v0, 0x1

    .line 236
    invoke-virtual {p1, v0}, Lzui/app/MessageDialog$Builder;->setMessageDialogType(I)Lzui/app/MessageDialog$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/zui/gallery/ui/DialogDetailsView;->mXuiAdapter:Lcom/zui/gallery/ui/DialogDetailsView$XuiDetailsAdapter;

    .line 240
    invoke-virtual {p1, v1}, Lzui/app/MessageDialog$Builder;->setPairedItems(Lzui/widget/PairedItemListAdapter;)Lzui/app/MessageDialog$Builder;

    move-result-object p1

    const v1, 0x7f100072

    .line 243
    invoke-virtual {p1, v1, v2}, Lzui/app/MessageDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lzui/app/MessageDialog$Builder;

    move-result-object p1

    .line 244
    invoke-virtual {p1}, Lzui/app/MessageDialog$Builder;->create()Lzui/app/MessageDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/ui/DialogDetailsView;->mDialog:Lzui/app/MessageDialog;

    .line 245
    invoke-virtual {p1, v0}, Lzui/app/MessageDialog;->setCancelable(Z)V

    .line 247
    iget-object p1, p0, Lcom/zui/gallery/ui/DialogDetailsView;->mDialog:Lzui/app/MessageDialog;

    new-instance v0, Lcom/zui/gallery/ui/DialogDetailsView$2;

    invoke-direct {v0, p0}, Lcom/zui/gallery/ui/DialogDetailsView$2;-><init>(Lcom/zui/gallery/ui/DialogDetailsView;)V

    invoke-virtual {p1, v0}, Lzui/app/MessageDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/zui/gallery/ui/DialogDetailsView;->mDialog:Lzui/app/MessageDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lzui/app/MessageDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/zui/gallery/ui/DialogDetailsView;->mDialog:Lzui/app/MessageDialog;

    invoke-virtual {v0}, Lzui/app/MessageDialog;->dismiss()V

    const/4 v0, 0x0

    .line 108
    iput-object v0, p0, Lcom/zui/gallery/ui/DialogDetailsView;->mDialog:Lzui/app/MessageDialog;

    :cond_0
    return-void
.end method

.method public hide()V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/zui/gallery/ui/DialogDetailsView;->mDialog:Lzui/app/MessageDialog;

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0}, Lzui/app/MessageDialog;->hide()V

    :cond_0
    return-void
.end method

.method public onLayoutChange(IIII)V
    .locals 0

    .line 200
    iget-object p1, p0, Lcom/zui/gallery/ui/DialogDetailsView;->mActivity:Landroid/app/Activity;

    new-instance p2, Lcom/zui/gallery/ui/DialogDetailsView$1;

    invoke-direct {p2, p0}, Lcom/zui/gallery/ui/DialogDetailsView$1;-><init>(Lcom/zui/gallery/ui/DialogDetailsView;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public reloadDetails()V
    .locals 4

    .line 114
    iget-object v0, p0, Lcom/zui/gallery/ui/DialogDetailsView;->mSource:Lcom/zui/gallery/ui/DetailsHelper$DetailsSource;

    invoke-interface {v0}, Lcom/zui/gallery/ui/DetailsHelper$DetailsSource;->setIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 117
    :cond_0
    iget-object v1, p0, Lcom/zui/gallery/ui/DialogDetailsView;->mSource:Lcom/zui/gallery/ui/DetailsHelper$DetailsSource;

    invoke-interface {v1}, Lcom/zui/gallery/ui/DetailsHelper$DetailsSource;->getDetails()Lcom/zui/gallery/data/MediaDetails;

    move-result-object v1

    if-nez v1, :cond_1

    .line 119
    new-instance v1, Lcom/zui/gallery/data/MediaDetails;

    invoke-direct {v1}, Lcom/zui/gallery/data/MediaDetails;-><init>()V

    const/4 v2, 0x0

    .line 120
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1, v2, v3}, Lcom/zui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    :cond_1
    if-eqz v1, :cond_3

    .line 123
    iget v2, p0, Lcom/zui/gallery/ui/DialogDetailsView;->mIndex:I

    if-ne v2, v0, :cond_2

    iget-object v2, p0, Lcom/zui/gallery/ui/DialogDetailsView;->mDetails:Lcom/zui/gallery/data/MediaDetails;

    if-ne v2, v1, :cond_2

    return-void

    .line 125
    :cond_2
    iput v0, p0, Lcom/zui/gallery/ui/DialogDetailsView;->mIndex:I

    .line 126
    iput-object v1, p0, Lcom/zui/gallery/ui/DialogDetailsView;->mDetails:Lcom/zui/gallery/data/MediaDetails;

    .line 127
    invoke-direct {p0, v1}, Lcom/zui/gallery/ui/DialogDetailsView;->setDetails(Lcom/zui/gallery/data/MediaDetails;)V

    :cond_3
    return-void
.end method

.method public reloadPrivacyDetails(Ljava/lang/String;)V
    .locals 2

    .line 133
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/DialogDetailsView;->createDetailsFromSQlite(Ljava/lang/String;)Lcom/zui/gallery/data/MediaDetails;

    move-result-object p1

    if-nez p1, :cond_0

    .line 135
    new-instance p1, Lcom/zui/gallery/data/MediaDetails;

    invoke-direct {p1}, Lcom/zui/gallery/data/MediaDetails;-><init>()V

    const/4 v0, 0x0

    .line 136
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/zui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 139
    iput-object p1, p0, Lcom/zui/gallery/ui/DialogDetailsView;->mDetails:Lcom/zui/gallery/data/MediaDetails;

    .line 140
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/DialogDetailsView;->setDetails(Lcom/zui/gallery/data/MediaDetails;)V

    :cond_1
    return-void
.end method

.method public setCloseListener(Lcom/zui/gallery/ui/DetailsHelper$CloseListener;)V
    .locals 0

    .line 809
    iput-object p1, p0, Lcom/zui/gallery/ui/DialogDetailsView;->mListener:Lcom/zui/gallery/ui/DetailsHelper$CloseListener;

    return-void
.end method

.method public show()V
    .locals 1

    .line 86
    invoke-virtual {p0}, Lcom/zui/gallery/ui/DialogDetailsView;->reloadDetails()V

    .line 87
    iget-object v0, p0, Lcom/zui/gallery/ui/DialogDetailsView;->mDialog:Lzui/app/MessageDialog;

    invoke-virtual {v0}, Lzui/app/MessageDialog;->show()V

    return-void
.end method

.method public showForPrivacy(Ljava/lang/String;)V
    .locals 0

    .line 92
    invoke-virtual {p0, p1}, Lcom/zui/gallery/ui/DialogDetailsView;->reloadPrivacyDetails(Ljava/lang/String;)V

    .line 93
    iget-object p1, p0, Lcom/zui/gallery/ui/DialogDetailsView;->mDialog:Lzui/app/MessageDialog;

    invoke-virtual {p1}, Lzui/app/MessageDialog;->show()V

    return-void
.end method
