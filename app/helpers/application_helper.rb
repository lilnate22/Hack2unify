module ApplicationHelper
  def provider_link(provider)
    if provider.class == Sponsor
      link_to provider.name, edit_sponsor_path(provider)
    else
      link_to provider.name, provider
    end
  end

  def incentive_summary(incentive)
    activity = incentive.activity
    project = activity.project
    provider = incentive.provider
    "#{project.name} needs #{activity.name} #{provider.name} will #{incentive.name}"
  end

  def incentive_blurb(incentive)
    if incentive.provider.name=='Neomind Labs'
      raw "<div class='blurb'>Neomind Labs is a Center City Philadelphia consulting company focused on creating valuable software using cutting-edge technologies.</div>"
    else
      ""
    end
  end

  def vote_up_path(target)
    self.send "vote_up_#{target.class.name.downcase}_path", target
  end

  def vote_down_path(target)
    self.send "vote_down_#{target.class.name.downcase}_path", target
  end
end
