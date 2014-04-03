package com.google.userfeedback.android.api;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.os.AsyncTask;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class UserFeedbackReportAdapter extends BaseAdapter
{
  private static final int CONVERT_DATE = 1;
  private static final int CONVERT_NONE = 0;
  static final String EXTRA_FIELD_NAME = "feedback.FIELD_NAME";
  private static final String TAG = "UserFeedbackReportAdapter";
  private static int inSampleSize = 1;
  private Context mContext;
  private List<Row> mRows;

  UserFeedbackReportAdapter(Context paramContext, UserFeedbackReport paramUserFeedbackReport)
    throws NoSuchFieldException
  {
    this.mContext = paramContext;
    buildRows(paramUserFeedbackReport);
  }

  private void addRow(Object paramObject, String paramString, int paramInt)
    throws NoSuchFieldException
  {
    addRow(paramObject, paramString, paramInt, null, 0);
  }

  private void addRow(Object paramObject, String paramString, int paramInt1, int paramInt2)
    throws NoSuchFieldException
  {
    addRow(paramObject, paramString, paramInt1, null, paramInt2);
  }

  private void addRow(Object paramObject, String paramString, int paramInt, Class<?> paramClass)
    throws NoSuchFieldException
  {
    addRow(paramObject, paramString, paramInt, paramClass, 0);
  }

  private void addRow(Object paramObject, String paramString, int paramInt1, Class<?> paramClass, int paramInt2)
    throws NoSuchFieldException
  {
    Field localField = paramObject.getClass().getField(paramString);
    this.mRows.add(new Row(paramInt1, paramObject, localField, paramClass, paramInt2));
  }

  private void addSectionHeader(int paramInt)
  {
    this.mRows.add(new Row(paramInt));
  }

  private void buildRows(UserFeedbackReport paramUserFeedbackReport)
    throws NoSuchFieldException
  {
    this.mRows = new ArrayList();
    if ((paramUserFeedbackReport.description != null) && (paramUserFeedbackReport.description.length() > 0))
      addRow(paramUserFeedbackReport, "description", R.string.gf_error_report_description);
    addRow(paramUserFeedbackReport, "packageName", R.string.gf_error_report_package_name);
    addRow(paramUserFeedbackReport, "packageVersion", R.string.gf_error_report_package_version);
    addRow(paramUserFeedbackReport, "packageVersionName", R.string.gf_error_report_package_version_name);
    addRow(paramUserFeedbackReport, "installerPackageName", R.string.gf_error_report_installer_package_name);
    addRow(paramUserFeedbackReport, "processName", R.string.gf_error_report_process_name);
    addRow(paramUserFeedbackReport, "timestamp", R.string.gf_error_report_time, 1);
    addRow(paramUserFeedbackReport, "isSystemApp", R.string.gf_error_report_system_app, 0);
    addSectionHeader(R.string.gf_network_data);
    addRow(paramUserFeedbackReport, "networkName", R.string.gf_network_name);
    addSectionHeader(R.string.gf_error_report_system);
    addRow(paramUserFeedbackReport, "device", R.string.gf_error_report_device);
    addRow(paramUserFeedbackReport, "buildId", R.string.gf_error_report_build_id);
    addRow(paramUserFeedbackReport, "buildType", R.string.gf_error_report_build_type);
    addRow(paramUserFeedbackReport, "model", R.string.gf_error_report_model);
    addRow(paramUserFeedbackReport, "product", R.string.gf_error_report_product);
    addRow(paramUserFeedbackReport, "sdkInt", R.string.gf_error_report_sdk_version);
    addRow(paramUserFeedbackReport, "release", R.string.gf_error_report_release);
    addRow(paramUserFeedbackReport, "incremental", R.string.gf_error_report_incremental);
    addRow(paramUserFeedbackReport, "codename", R.string.gf_error_report_codename);
    addRow(paramUserFeedbackReport, "board", R.string.gf_error_report_board);
    addRow(paramUserFeedbackReport, "brand", R.string.gf_error_report_brand);
    addRow(paramUserFeedbackReport, "numGoogleAccounts", R.string.gf_error_report_user_accounts);
    if ((paramUserFeedbackReport.installedPackages != null) && (!paramUserFeedbackReport.installedPackages.isEmpty()))
      addRow(paramUserFeedbackReport, "installedPackages", R.string.gf_error_report_installed_packages, ShowStringListActivity.class);
    if ((paramUserFeedbackReport.runningApplications != null) && (!paramUserFeedbackReport.runningApplications.isEmpty()))
      addRow(paramUserFeedbackReport, "runningApplications", R.string.gf_error_report_running_apps, ShowStringListActivity.class);
    if ((paramUserFeedbackReport.systemLog != null) && (UserFeedback.userFeedback().shouldIncludeSystemLogs()))
      addRow(paramUserFeedbackReport, "systemLog", R.string.gf_error_report_system_log, ShowTextActivity.class);
    if (paramUserFeedbackReport.crashData != null)
    {
      UserFeedbackCrashData localUserFeedbackCrashData = paramUserFeedbackReport.crashData;
      addSectionHeader(R.string.gf_crash_header);
      addRow(localUserFeedbackCrashData, "exceptionClassName", R.string.gf_exception_class_name);
      addRow(localUserFeedbackCrashData, "throwFileName", R.string.gf_throw_file_name);
      addRow(localUserFeedbackCrashData, "throwLineNumber", R.string.gf_throw_line_number);
      addRow(localUserFeedbackCrashData, "throwClassName", R.string.gf_throw_class_name);
      addRow(localUserFeedbackCrashData, "throwMethodName", R.string.gf_throw_method_name);
      if (localUserFeedbackCrashData.exceptionMessage != null)
        addRow(localUserFeedbackCrashData, "exceptionMessage", R.string.gf_exception_message);
      addRow(localUserFeedbackCrashData, "stackTrace", R.string.gf_stack_trace, ShowTextActivity.class);
    }
    if ((paramUserFeedbackReport.screenshot != null) && (UserFeedback.userFeedback().shouldIncludeScreenshot()))
    {
      addSectionHeader(R.string.gf_screenshot_preview);
      addRow(paramUserFeedbackReport, "screenshot", R.string.gf_screenshot_preview);
    }
  }

  private static int calculateInSampleSize(BitmapFactory.Options paramOptions, int paramInt1, int paramInt2)
  {
    int i = paramOptions.outHeight;
    int j = paramOptions.outWidth;
    int k;
    int m;
    if ((i > paramInt2) || (j > paramInt1))
    {
      k = Math.round(i / paramInt2);
      m = Math.round(j / paramInt1);
      if (k <= m)
        break label59;
    }
    while (true)
    {
      inSampleSize = k;
      return inSampleSize;
      label59: k = m;
    }
  }

  private Bitmap decodeSampledBitmap(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    BitmapFactory.Options localOptions = new BitmapFactory.Options();
    localOptions.inJustDecodeBounds = true;
    BitmapFactory.decodeByteArray(paramArrayOfByte, 0, paramArrayOfByte.length, localOptions);
    if ((paramInt1 == 0) || (paramInt2 == 0))
    {
      paramInt1 = localOptions.outWidth / 2;
      paramInt2 = localOptions.outHeight / 2;
    }
    localOptions.inSampleSize = calculateInSampleSize(localOptions, paramInt1, paramInt2);
    localOptions.inJustDecodeBounds = false;
    return BitmapFactory.decodeByteArray(paramArrayOfByte, 0, paramArrayOfByte.length, localOptions);
  }

  public boolean areAllItemsEnabled()
  {
    return false;
  }

  public int getCount()
  {
    return this.mRows.size();
  }

  public Object getItem(int paramInt)
  {
    return this.mRows.get(paramInt);
  }

  public long getItemId(int paramInt)
  {
    return paramInt;
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    Row localRow = (Row)this.mRows.get(paramInt);
    LayoutInflater localLayoutInflater = (LayoutInflater)this.mContext.getSystemService("layout_inflater");
    View localView = paramView;
    if (localRow.isHeader())
    {
      UiConfigurationOptions localUiConfigurationOptions;
      if ((localView == null) || (localView.getId() != R.id.gf_section_header_row))
      {
        localView = localLayoutInflater.inflate(R.layout.gf_section_header_row, paramViewGroup, false);
        localUiConfigurationOptions = UserFeedback.userFeedback().getSpec().getUiConfigurationOptions();
        if (localUiConfigurationOptions != null)
        {
          if (localUiConfigurationOptions.getSectionHeaderBackgroundResourceId() >= 0)
            break label144;
          localView.setBackgroundDrawable(null);
        }
      }
      while (true)
      {
        if (localUiConfigurationOptions.getSectionHeaderFontColor() != 0)
          ((TextView)localView).setTextColor(localView.getResources().getColor(localUiConfigurationOptions.getSectionHeaderFontColor()));
        ((TextView)localView).setText(localRow.labelResId);
        return localView;
        label144: localView.setBackgroundDrawable(localView.getResources().getDrawable(localUiConfigurationOptions.getSectionHeaderBackgroundResourceId()));
      }
    }
    if (localRow.isExpandable())
      if ((localView == null) || (localView.getId() != R.id.gf_expandable_row))
        localView = localLayoutInflater.inflate(R.layout.gf_expandable_row, paramViewGroup, false);
    while (true)
    {
      label228: TextView localTextView;
      if (!localRow.isImageView())
      {
        ((TextView)localView.findViewById(R.id.gf_label)).setText(localRow.labelResId);
        if (localRow.viewerActivity == null)
          localTextView = (TextView)localView.findViewById(R.id.gf_value);
      }
      try
      {
        int i = localRow.convertType;
        switch (i)
        {
        default:
        case 0:
          while (true)
          {
            return localView;
            if (localRow.isImageView())
            {
              if ((localView != null) && (localView.getId() == R.id.gf_screenshot_row))
                break;
              localView = localLayoutInflater.inflate(R.layout.gf_screenshot_row, paramViewGroup, false);
              break;
            }
            if ((localView != null) && (localView.getId() == R.id.gf_label_value_row))
              break;
            localView = localLayoutInflater.inflate(R.layout.gf_label_value_row, paramViewGroup, false);
            break;
            new PublishBitmapTask((ImageView)localView.findViewById(R.id.gf_feedback_screenshot_view)).execute(new Row[] { localRow });
            break label228;
            if (!localRow.field.getType().equals(Integer.TYPE))
              break label445;
            localTextView.setText(localRow.field.get(localRow.report).toString());
          }
        case 1:
        }
      }
      catch (IllegalAccessException localIllegalAccessException)
      {
        while (true)
        {
          Log.d("UserFeedbackReportAdapter", "failed to obtain field value", localIllegalAccessException);
          continue;
          label445: if (localRow.field.getType().equals(String.class))
          {
            localTextView.setText((String)localRow.field.get(localRow.report));
          }
          else if (localRow.field.getType().equals(Boolean.TYPE))
          {
            localTextView.setText(localRow.field.get(localRow.report).toString());
            continue;
            Date localDate = new Date(localRow.field.getLong(localRow.report));
            localTextView.setText(DateFormat.getDateInstance(0).format(localDate));
          }
        }
      }
    }
  }

  public boolean isEnabled(int paramInt)
  {
    return !((Row)this.mRows.get(paramInt)).isHeader();
  }

  public void onListItemClick(int paramInt)
  {
    Row localRow = (Row)this.mRows.get(paramInt);
    if (!localRow.isExpandable())
      return;
    Intent localIntent = new Intent(this.mContext, localRow.viewerActivity);
    localIntent.putExtra("feedback.FIELD_NAME", localRow.field.getName());
    this.mContext.startActivity(localIntent);
  }

  private class PublishBitmapTask extends AsyncTask<UserFeedbackReportAdapter.Row, Void, Bitmap>
  {
    private int height = 0;
    private final WeakReference<ImageView> imageViewReference;
    private int width = 0;

    public PublishBitmapTask(ImageView arg2)
    {
      Object localObject;
      this.imageViewReference = new WeakReference(localObject);
      this.height = localObject.getHeight();
      this.width = localObject.getWidth();
    }

    protected Bitmap doInBackground(UserFeedbackReportAdapter.Row[] paramArrayOfRow)
    {
      return UserFeedbackReportAdapter.this.decodeSampledBitmap(paramArrayOfRow[0].imageBytes, this.width, this.height);
    }

    protected void onPostExecute(Bitmap paramBitmap)
    {
      if ((this.imageViewReference != null) && (paramBitmap != null))
      {
        ImageView localImageView = (ImageView)this.imageViewReference.get();
        if (localImageView != null)
          localImageView.setImageBitmap(paramBitmap);
      }
    }
  }

  protected static class Row
  {
    public int convertType;
    public Field field;
    public byte[] imageBytes;
    public int labelResId;
    public Object report;
    public Class<?> viewerActivity;

    Row(int paramInt)
    {
      this(paramInt, null, null, null, 0);
    }

    Row(int paramInt1, Object paramObject, Field paramField, Class<?> paramClass, int paramInt2)
    {
      this.labelResId = paramInt1;
      this.report = paramObject;
      this.field = paramField;
      this.viewerActivity = paramClass;
      this.convertType = paramInt2;
      if ((paramField != null) && (paramField.getType().equals(new byte[0].getClass())))
        try
        {
          this.imageBytes = ((byte[])paramField.get(paramObject));
          return;
        }
        catch (IllegalArgumentException localIllegalArgumentException)
        {
          this.imageBytes = null;
          localIllegalArgumentException.printStackTrace();
          return;
        }
        catch (IllegalAccessException localIllegalAccessException)
        {
          this.imageBytes = null;
          localIllegalAccessException.printStackTrace();
          return;
        }
      this.imageBytes = null;
    }

    boolean isExpandable()
    {
      return this.viewerActivity != null;
    }

    boolean isHeader()
    {
      return this.report == null;
    }

    boolean isImageView()
    {
      return this.imageBytes != null;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.userfeedback.android.api.UserFeedbackReportAdapter
 * JD-Core Version:    0.6.2
 */