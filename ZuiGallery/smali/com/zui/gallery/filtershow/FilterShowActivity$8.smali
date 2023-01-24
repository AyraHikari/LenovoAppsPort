.class Lcom/zui/gallery/filtershow/FilterShowActivity$8;
.super Ljava/lang/Object;
.source "FilterShowActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/filtershow/FilterShowActivity;->loadXML()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/FilterShowActivity;)V
    .locals 0

    .line 854
    iput-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$8;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private avatarPhotoAdjustStatus()V
    .locals 5

    .line 936
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u8c03\u8282  \uff1a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mCurrentData:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " current "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "zlq"

    invoke-static {v2, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    sget v0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mCurrentData:I

    if-ne v0, v1, :cond_1

    .line 938
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 939
    iget-object v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$8;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {v1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$1400(Lcom/zui/gallery/filtershow/FilterShowActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v3, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$8;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {v3}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$1300(Lcom/zui/gallery/filtershow/FilterShowActivity;)Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->getSelectedPosition()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getName()Ljava/lang/String;

    move-result-object v1

    .line 940
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "avatarPhotoAdjustStatus: name  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "getSelectedPosition  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$8;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {v4}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$1300(Lcom/zui/gallery/filtershow/FilterShowActivity;)Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->getSelectedPosition()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    iget-object v3, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$8;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {v3}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$1300(Lcom/zui/gallery/filtershow/FilterShowActivity;)Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->getSelectedPosition()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 942
    iget-object v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$8;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {v1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$1300(Lcom/zui/gallery/filtershow/FilterShowActivity;)Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->getSelectedPosition()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    const-string v0, "avatarPhotoAdjustStatus return"

    .line 943
    invoke-static {v2, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v1, " avatarPhotoAdjustStatus \u4e0a\u4f20"

    .line 946
    invoke-static {v2, v1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    sget-object v1, Lcom/zui/gallery/util/AvatarUtils$Catagory;->PHOTODETAILPAGE:Lcom/zui/gallery/util/AvatarUtils$Catagory;

    sget-object v2, Lcom/zui/gallery/util/AvatarUtils$Action;->PHOTO_ADJUST:Lcom/zui/gallery/util/AvatarUtils$Action;

    const/4 v3, 0x0

    const-string v4, ""

    invoke-static {v1, v2, v4, v3, v0}, Lcom/zui/gallery/util/AvatarUtils;->trackEvent(Lcom/zui/gallery/util/AvatarUtils$Catagory;Lcom/zui/gallery/util/AvatarUtils$Action;Ljava/lang/String;ILjava/util/Map;)V

    :cond_1
    return-void
.end method

.method private avatarPhotoCropStatus()V
    .locals 5

    .line 953
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u526a\u5207  \uff1a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mCurrentData:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " current "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "zlq"

    invoke-static {v2, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    sget v0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mCurrentData:I

    if-ne v0, v1, :cond_0

    .line 955
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 956
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "avatarPhotoCropStatus: panelName  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/zui/gallery/filtershow/category/CategoryPanel;->panelName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "stat  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/zui/gallery/filtershow/category/CategoryPanel;->stat:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    sget-object v1, Lcom/zui/gallery/filtershow/category/CategoryPanel;->panelName:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "avatarPhotoCropStatus \u4e0a\u4f20"

    .line 958
    invoke-static {v2, v1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    sget v1, Lcom/zui/gallery/filtershow/category/CategoryPanel;->stat:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/zui/gallery/filtershow/category/CategoryPanel;->panelName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 960
    sget-object v1, Lcom/zui/gallery/util/AvatarUtils$Catagory;->PHOTODETAILPAGE:Lcom/zui/gallery/util/AvatarUtils$Catagory;

    sget-object v2, Lcom/zui/gallery/util/AvatarUtils$Action;->PHOTO_CROP:Lcom/zui/gallery/util/AvatarUtils$Action;

    const/4 v3, 0x0

    const-string v4, ""

    invoke-static {v1, v2, v4, v3, v0}, Lcom/zui/gallery/util/AvatarUtils;->trackEvent(Lcom/zui/gallery/util/AvatarUtils$Catagory;Lcom/zui/gallery/util/AvatarUtils$Action;Ljava/lang/String;ILjava/util/Map;)V

    nop

    :cond_0
    return-void
.end method

.method private avatarPhotoFilterStatus()V
    .locals 6

    .line 968
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u6ee4\u955c  \uff1a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mCurrentData:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " current "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "zlq"

    invoke-static {v2, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    sget v0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mCurrentData:I

    if-ne v0, v1, :cond_1

    .line 970
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 971
    iget-object v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$8;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {v1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$1600(Lcom/zui/gallery/filtershow/FilterShowActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v3, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$8;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {v3}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$1500(Lcom/zui/gallery/filtershow/FilterShowActivity;)Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->getSelectedPosition()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getName()Ljava/lang/String;

    move-result-object v1

    .line 972
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "avatarPhotoFilterStatus: name  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "getSelectedPosition  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$8;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {v4}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$1500(Lcom/zui/gallery/filtershow/FilterShowActivity;)Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->getSelectedPosition()I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    iget-object v3, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$8;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {v3}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$1500(Lcom/zui/gallery/filtershow/FilterShowActivity;)Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->getSelectedPosition()I

    move-result v3

    add-int/2addr v3, v5

    if-ne v3, v5, :cond_0

    const-string v0, "avatarPhotoFilterStatus return"

    .line 974
    invoke-static {v2, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v3, "avatarPhotoFilterStatus \u4e0a\u4f20"

    .line 977
    invoke-static {v2, v3}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    iget-object v2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$8;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {v2}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$1500(Lcom/zui/gallery/filtershow/FilterShowActivity;)Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->getSelectedPosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 979
    sget-object v1, Lcom/zui/gallery/util/AvatarUtils$Catagory;->PHOTODETAILPAGE:Lcom/zui/gallery/util/AvatarUtils$Catagory;

    sget-object v2, Lcom/zui/gallery/util/AvatarUtils$Action;->PHOTO_FILTER:Lcom/zui/gallery/util/AvatarUtils$Action;

    const/4 v3, 0x0

    const-string v4, ""

    invoke-static {v1, v2, v4, v3, v0}, Lcom/zui/gallery/util/AvatarUtils;->trackEvent(Lcom/zui/gallery/util/AvatarUtils$Catagory;Lcom/zui/gallery/util/AvatarUtils$Action;Ljava/lang/String;ILjava/util/Map;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 857
    invoke-static {}, Lcom/zui/gallery/app/GalleryAppImpl;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/zui/gallery/util/GroupUtils;->setSaveFromShar(Landroid/content/Context;Z)V

    .line 858
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$8;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {p1, v0}, Lcom/zui/gallery/util/GroupUtils;->enterDragState(Landroid/content/Context;Z)V

    .line 860
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$8;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$700(Lcom/zui/gallery/filtershow/FilterShowActivity;)Z

    move-result p1

    const-string/jumbo v1, "wccc"

    if-eqz p1, :cond_0

    .line 861
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$8;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$900(Lcom/zui/gallery/filtershow/FilterShowActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$802(Lcom/zui/gallery/filtershow/FilterShowActivity;Landroid/net/Uri;)Landroid/net/Uri;

    .line 862
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick..isFromPrivacy,  mSelectedImageUri = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$8;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {v2}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$800(Lcom/zui/gallery/filtershow/FilterShowActivity;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$8;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$400(Lcom/zui/gallery/filtershow/FilterShowActivity;)Landroid/content/Context;

    move-result-object p1

    iget-object v2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$8;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {v2}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$800(Lcom/zui/gallery/filtershow/FilterShowActivity;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/zui/gallery/filtershow/tools/SaveImage;->getEditFile(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object p1

    .line 865
    iget-object v2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$8;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {v2}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$700(Lcom/zui/gallery/filtershow/FilterShowActivity;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 866
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick..isFromPrivacy, before edit  privacyFilePath = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$8;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {v2}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$900(Lcom/zui/gallery/filtershow/FilterShowActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$8;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$400(Lcom/zui/gallery/filtershow/FilterShowActivity;)Landroid/content/Context;

    move-result-object p1

    iget-object v2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$8;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {v2}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$900(Lcom/zui/gallery/filtershow/FilterShowActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/zui/gallery/filtershow/tools/SaveImage;->getPrivacyEditFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 868
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick..isFromPrivacy,  editFile = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    :cond_1
    iget-object v2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$8;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-virtual {v2, p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->isTransDataTooLarge(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 871
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$8;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$400(Lcom/zui/gallery/filtershow/FilterShowActivity;)Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f1000b5

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 872
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$8;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->done()V

    return-void

    .line 878
    :cond_2
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->savePreviewCaptionForSaveTask()V

    .line 884
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$8;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {p1, v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$1002(Lcom/zui/gallery/filtershow/FilterShowActivity;Z)Z

    .line 886
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$8;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    const/4 v2, 0x1

    invoke-static {p1, v2}, Lcom/zui/gallery/util/GroupUtils;->setSavingTaskState(Landroid/content/Context;Z)V

    .line 887
    invoke-static {}, Lcom/zui/gallery/util/GalleryUtils;->isEnoughSpace()Z

    move-result p1

    if-nez p1, :cond_3

    .line 888
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$8;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$1100(Lcom/zui/gallery/filtershow/FilterShowActivity;)V

    .line 889
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$8;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {p1, v0}, Lcom/zui/gallery/util/GroupUtils;->setSavingTaskState(Landroid/content/Context;Z)V

    goto/16 :goto_1

    .line 892
    :cond_3
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$8;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$1200(Lcom/zui/gallery/filtershow/FilterShowActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 894
    sput-boolean v2, Lcom/zui/gallery/filtershow/FilterShowActivity;->isSave:Z

    .line 895
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$8;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->startSaveIndicator()V

    .line 897
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$8;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v2, "EditorPanel"

    invoke-virtual {p1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 900
    instance-of v2, p1, Lcom/zui/gallery/filtershow/editors/EditorPanel;

    if-eqz v2, :cond_4

    .line 901
    check-cast p1, Lcom/zui/gallery/filtershow/editors/EditorPanel;

    .line 907
    :cond_4
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$8;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$800(Lcom/zui/gallery/filtershow/FilterShowActivity;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/zui/gallery/filtershow/tools/SaveImage;->getEditFile(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_7

    .line 908
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$8;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$700(Lcom/zui/gallery/filtershow/FilterShowActivity;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 909
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getPrivacyEditFile = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$8;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$900(Lcom/zui/gallery/filtershow/FilterShowActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/zui/gallery/filtershow/tools/SaveImage;->getPrivacyEditFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$8;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$900(Lcom/zui/gallery/filtershow/FilterShowActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/zui/gallery/filtershow/tools/SaveImage;->getPrivacyEditFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_8

    const-string p1, "saveIamge is called"

    .line 911
    invoke-static {v1, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$8;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->savePrivacyImage()V

    .line 913
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity$8;->avatarPhotoAdjustStatus()V

    return-void

    :cond_5
    const-string p1, "FilterShowActivity"

    const-string v1, "file not exist"

    .line 917
    invoke-static {p1, v1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$8;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    const v1, 0x7f10011f

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 919
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 920
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$8;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {p1, v0}, Lcom/zui/gallery/util/GroupUtils;->setSavingTaskState(Landroid/content/Context;Z)V

    .line 921
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$8;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$000(Lcom/zui/gallery/filtershow/FilterShowActivity;)Lcom/zui/gallery/filtershow/pipeline/ProcessingService;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$8;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$000(Lcom/zui/gallery/filtershow/FilterShowActivity;)Lcom/zui/gallery/filtershow/pipeline/ProcessingService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->clearNvsEffectRenderCore()V

    .line 922
    :cond_6
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$8;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->finish()V

    goto :goto_0

    .line 925
    :cond_7
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$8;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->saveImage()V

    .line 931
    :cond_8
    :goto_0
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity$8;->avatarPhotoAdjustStatus()V

    :goto_1
    return-void
.end method
